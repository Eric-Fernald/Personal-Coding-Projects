//This program runs a self grading quiz.
//Created by Eric Fernald.

fun main() {
  val quizAnswer1 = 15
  var quizAnswer2 = 3
  val quizAnswer3 = "isosceles"
  val quizAnswer4 = 47

// Creating quiz questions
 println("What is 75/5:")
 var studentAnswer1 = Integer.valueOf(readLine())

 println("What is the value of y in 6 * 2y = 36:")
 var studentAnswer2 = Integer.valueOf(readLine())

 println("What type of triangle has two equal sides:")
 val studentAnswer3 = readLine()

 println("What is 8 * 6 - (3 -2):")
 val studentAnswer4 = Integer.valueOf(readLine())

//Grading the quiz
 var points = 0

 //Question 1
 if (studentAnswer1 == quizAnswer1){
   points += 25
 }

 //Question 2
 if (studentAnswer2 == quizAnswer2){
   points += 25
 } else if (studentAnswer2 == quizAnswer2++ || studentAnswer2 == quizAnswer2--) {
   points += 20
   println("The answer $studentAnswer2 is within 1 point of $quizAnswer2.")
 } else {
   points += 1
 }

 //Question 3
if (studentAnswer3 == quizAnswer3){
  points += 25
} else if (studentAnswer3 == "equilateral") {
  points += 10
} else {
  points += 1
}

//Question 4
if (studentAnswer4 == quizAnswer4){
  points += 25
} else if (studentAnswer4 in 44..54){
  points += 20
} else {
  points += 1
}

//Returning a final grade
when (points) {
  in 0..59 -> println("$points means you earned an F.")
  in 60..69 -> println("$points means you earned an D.")
  in 70..79 -> println("$points means you earned an C.")
  in 80..89 -> println("$points means you earned an B.")
  in 90..100 -> println("$points means you earned an A.")
  in 101..110 -> println("$points means you earned an A+.")
  }
}