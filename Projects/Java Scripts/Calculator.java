//This program is a simple calculator. 
//Created by Eric Fernald.

public class Calculator {
  public Calculator() {

  }
  //Addition method
  public int add(int a, int b){
  return a + b;

  }
  //Subtraction method
  public int subtract(int a, int b){
  return a - b;
  }
  //Multiplication method
  public int multiply(int a, int b){
  return a * b;
  }
  //Division method
  public int divide(int a, int b){
  return a / b;
  }
  //Modulo method
  public int modulo(int a, int b){
  return a % b;
  }
  //Main method
  public static void main(String[] args){
  Calculator myCalculator = new Calculator();
  System.out.println(myCalculator.add(5,7));
  System.out.println(myCalculator.subtract(45,11));
  System.out.println(myCalculator.multiply(16,27));

  }
}