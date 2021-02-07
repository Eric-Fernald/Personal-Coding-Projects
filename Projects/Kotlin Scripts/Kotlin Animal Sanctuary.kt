//This program creates an animal sanctuary and 3 tasks for a zookeeper to perform.
//Created by Eric Fernald.

//Define the main function.
fun main() {
  
  var responsibilities = mutableListOf("feed the chimps", "play a random game", "conduct a health check on Foxie")
  var responsibilitiesComplete = 0
  var timeSpent = 0
  val totalShiftTime = 4
  var foxiesHealthCheck = mutableMapOf<String, Any?>()
  var chimpsHaveEaten = mutableMapOf("Bonnie" to false, "Jubilee" to false, "Frodo" to false, "Foxie" to false)

//Responsibility 1
println("First, ${responsibilities[0]}.")

println("Feeding Bonnie....")
chimpsHaveEaten["Bonnie"] = true

println("Feeding Jubilee....")
chimpsHaveEaten["Jubilee"] = true

println("Feeding Frodo....")
chimpsHaveEaten["Frodo"] = true

println("Feeding Foxie....")
chimpsHaveEaten["Foxie"] = true

timeSpent += 1
responsibilitiesComplete++
println("All chimps have now been fed! You've completed $responsibilitiesComplete / ${responsibilities.size} responsibilities. ")

//Responsibility 2
println("Next, ${responsibilities[1]}.")
val games = mutableSetOf("tug-of-war with a blanket", "catch and throw", "number game")

val randomGame = games.random()
println(randomGame)

timeSpent += 1
responsibilitiesComplete++

println("Each chimp has now played a game of $randomGame! You've completed $responsibilitiesComplete / ${responsibilities.size} responsibilities.")

//Responsibility 3
println("Next, ${responsibilities[2]}.")
foxiesHealthCheck.put("Temperature", 32.7)
foxiesHealthCheck.put("mood", "happy")
println("Foxie has a temperature of ${foxiesHealthCheck["Temperature"]} and is feeling ${foxiesHealthCheck["mood"]}.")

timeSpent +=1
responsibilitiesComplete++
println("You've now completed $responsibilitiesComplete / ${responsibilities.size} responsibilities.")

if (timeSpent <= totalShiftTime && responsibilitiesComplete == responsibilities.size){
  println("Congrats on doing a great job!")
} else if (timeSpent >= totalShiftTime && responsibilitiesComplete == responsibilities.size) {
  println("You completed all of your tasks, but you went overtime.")
} else {
  println("You went over time and did not complete all of your tasks.")
}


}