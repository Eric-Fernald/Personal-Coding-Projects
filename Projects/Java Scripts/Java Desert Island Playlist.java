//This program creates a music playlist.
//Created by Eric Fernald.

import java.util.ArrayList;

class Playlist {
  
  public static void main(String[] args) {
    // Creating the playlist.
    ArrayList<String> desertIslandPlaylist = new ArrayList<String>();
    
    // Adding songs to the playlist.
    desertIslandPlaylist.add("Wake Me Up - Avicii");
    desertIslandPlaylist.add("Killswitch Engage - My Curse");
    desertIslandPlaylist.add("Anti You - Blue Stahli");
    desertIslandPlaylist.add("DJ Turn It Up - Yellow Claw");
    desertIslandPlaylist.add("Rap God - Eminem");
    desertIslandPlaylist.add("Tokyo Drift - Teriyaki Boyz");
    desertIslandPlaylist.add("Temperature - Sean Paul");
    desertIslandPlaylist.add("BYOB - System Of A Down");
    desertIslandPlaylist.add("Ganjaman - Alfons");
    desertIslandPlaylist.add("Emergency - Pegboard Nerds");
    
    
    // Removing songs from the playlist.
    desertIslandPlaylist.remove("Emergency - Pegboard Nerds");
    desertIslandPlaylist.remove("Ganjaman - Alfons");
    desertIslandPlaylist.remove("BYOB - System Of A Down");
    desertIslandPlaylist.remove("Temperature - Sean Paul");
    desertIslandPlaylist.remove("Tokyo Drift - Teriyaki Boyz");
    
    // Swapping songs in the playlist.
    int indexA = desertIslandPlaylist.indexOf("Killswitch Engage - My Curse");
    int indexB = desertIslandPlaylist.indexOf("Anti You - Blue Stahli");
    
    String tempA = "Killswitch Engage - My Curse";
    
    desertIslandPlaylist.set(indexA, "Anti You - Blue Stahli");

    // Printing the results.
    desertIslandPlaylist.set(indexB, tempA);
    System.out.println(desertIslandPlaylist);
    
  }
  
}