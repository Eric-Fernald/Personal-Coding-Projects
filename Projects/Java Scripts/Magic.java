//This program uses a little bit of math magic to return the same number that is used as the input.
//Created by Eric Fernald.

public class Magic {
	public static void main(String[] args) {
    //myNumber refers to the original number from now on
    int myNumber = 7;
    int stepOne = myNumber * myNumber;
    int stepTwo = stepOne + myNumber;
    int stepThree = stepTwo / myNumber;
    int stepFour = stepThree + 17;
    int stepFive = stepFour - myNumber;
    int stepSix = stepFive / 6;
    System.out.println(stepSix);
		

	}
}