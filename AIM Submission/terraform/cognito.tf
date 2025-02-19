#Cognito user pool
resource "aws_cognito_user_pool" "inventory_user_pool" {
  name = "aim-inventory-user-pool"

  password_policy {
    minimum_length    = 8
    require_lowercase = true
    require_numbers   = true
    require_symbols   = true
    require_uppercase = true
    temporary_password_validity_days = 7
  }

  email_configuration {
    email_sending_account = "COGNITO_DEFAULT"
  }

  mfa_configuration = "REQUIRED"

  schema {
    name              = "email"
    attribute_data_type = "String"
    required          = true
    mutable           = false
    string_attribute_constraints {
      min_length = 5
      max_length = 2048
    }
  }
}

#Cognito App Client
resource "aws_cognito_user_pool_client" "app_client" {
  name                      = "inventory-app-client"
  user_pool_id              = aws_cognito_user_pool.inventory_user_pool.id
  allowed_oauth_flows       = ["code", "implicit"]
  allowed_oauth_scopes      = ["openid", "email", "profile", "aws.cognito.signin.user.admin"]
  allowed_oauth_flows_user_pool_client = true

  callback_urls             = ["https://aim.machines.run/callback"]
  logout_urls               = ["https://aim.machines.run/logout"]

  default_redirect_uri      = "https://aim.machines.run/callback"
  generate_secret           = false
  explicit_auth_flows       = ["ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH"]

  supported_identity_providers = ["COGNITO"]
}

#Cognito Domain
resource "aws_cognito_user_pool_domain" "cognito_domain" {
  domain       = "aim.machines.run"
  user_pool_id = aws_cognito_user_pool.inventory_user_pool.id
}

#IAM role for the Lambda function
resource "aws_iam_role" "pre_signup_lambda_role" {
  name = "cognito-pre-signup-lambda-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

#Attach policies to the IAM role
resource "aws_iam_policy_attachment" "pre_signup_lambda_policy" {
  name       = "cognito-pre-signup-lambda-policy"
  roles      = [aws_iam_role.cognito_pre_signup_lambda_role.name]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

#Lambda function
resource "aws_lambda_function" "pre_signup_lambda" {
  function_name = "cognito-pre-signup-lambda"
  handler       = "index.lambda_handler"
  runtime       = "python3.9"
  timeout       = 30
  memory_size   = 128
  role          = aws_iam_role.cognito_pre_signup_lambda_role.arn

  filename = "lambda_function_payload.zip"

  source_code_hash = filebase64sha256("lambda_function_payload.zip")

  publish = true
}

#Lambda trigger for Cognito
resource "aws_cognito_user_pool" "user_pool" {
  name = "aim-inventory-user-pool"
  lambda_config {
    pre_sign_up = aws_lambda_function.cognito_pre_signup_lambda.arn
  }
   password_policy {
    minimum_length    = 8
    require_lowercase = true
    require_numbers   = true
    require_symbols   = true
    require_uppercase = true
    temporary_password_validity_days = 7
  }

  #Configure Email Settings
  email_configuration {
    email_sending_account = "COGNITO_DEFAULT"
  }

  mfa_configuration = "REQUIRED"

  #Schema attributes for the Cognito user pool
  schema {
    name              = "email"
    attribute_data_type = "String"
    required          = true
    mutable           = false
    string_attribute_constraints {
      min_length = 5
      max_length = 2048
    }
  }
}