//This program runs a droid named Eric. 
//Created by Eric Fernald.

//Eastablishing the Droid class.
public class Droid{
  String name;
  int batteryLevel;
  //Giving the droid a name and battery level.
  public Droid (String droidName){
    batteryLevel = 100;
    name = droidName;
  }
  //Telling the droid to perform a task and draining its battery level at the same time.
  public void performTask(String task) {
    batteryLevel = batteryLevel - 10;
    System.out.println(name + " is performing task: " + task);
  }
  //The droid says Hello.
  public String toString() {
    return "Hello, I am the droid: " + name;
  }
  //Establishing the droid and telling it to dance and code.
  public static void main(String[] args) {
    Droid eric = new Droid("Eric");
    System.out.println(eric);
    eric.performTask("dancing");
    eric.performTask("coding");
    }
  }