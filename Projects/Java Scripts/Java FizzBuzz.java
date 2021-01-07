//This program runs the classic FizzBuzz question. 
//If the number is a multiple of 35, print fizzbuzz.
//If the number is only a multiple of 5, print fizz.
//If the number is only a multiple of 7, print buzz.
//Created by Eric Fernald.

class FizzBuzz {

    public static void main(String[] args) {

       for (int i = 1; i <= 100; i++){
         if (((i % 5) == 0) && ((i % 7) == 0)) // Is it a multiple of 5 & 7?
        System.out.println("fizzbuzz");
          else if ((i % 5) == 0) // Is it a multiple of 5?
        System.out.println("fizz");
          else if ((i % 7) == 0) // Is it a multiple of 7?
        System.out.println("buzz");
          else
        System.out.println(i); // Not a multiple of 5 or 7

       }

    }

}