class SuperEffective {
  SuperEffective() {
  }
  double effectiveness(String move, String type, String typeTwo) {
    double out=1;

    String typeOne;
    for (int i=0; i<2; i++) {
      if (i==0) {
        typeOne=type;
      } else {
        typeOne=typeTwo;
      }  
      println("defending type-- "+typeOne);
      println("move type:-- " +move);
      /////////////////////////////////////////////
      //////////////RESISTANCES////////////////////
      /////////////////////////////////////////////
      if (move.equals("normal")&&(typeOne.equals("rock")||typeOne.equals("steel"))) {
        out/=2;
      }
      if (move.equals("fighting")&&(typeOne.equals("flying")||typeOne.equals("poison")||typeOne.equals("bug")||typeOne.equals("psychic")||typeOne.equals("fairy"))) {
        out/=2;
      }
      if (move.equals("flying")&&(typeOne.equals("rock")||typeOne.equals("steel")||typeOne.equals("electric"))) {
        out/=2;
      }
      if (move.equals("poison")&&(typeOne.equals("rock")||typeOne.equals("ground")||typeOne.equals("ghost"))) {
        out/=2;
      }
      if (move.equals("ground")&&(typeOne.equals("bug")||typeOne.equals("grass"))) {
        out/=2;
      }    
      if (move.equals("rock")&&(typeOne.equals("steel")||typeOne.equals("fighting")||typeOne.equals("ground"))) {
        out/=2;
      }
      if (move.equals("bug")&&(typeOne.equals("fighting")||typeOne.equals("flying")||typeOne.equals("poison")||typeOne.equals("ghost")||typeOne.equals("steel")||typeOne.equals("fire")||typeOne.equals("fairy"))) {
        out/=2;
      }
      if (move.equals("ghost")&&(typeOne.equals("dark"))) {
        out/=2;
      }
      if (move.equals("steel")&&(typeOne.equals("steel")||typeOne.equals("fire")||typeOne.equals("water")||typeOne.equals("electric"))) {
        out/=2;
      }
      if (move.equals("fire")&&(typeOne.equals("rock")||typeOne.equals("fire")||typeOne.equals("water")||typeOne.equals("dragon"))) {
        out/=2;
      }
      if (move.equals("water")&&(typeOne.equals("water")||typeOne.equals("grass")||typeOne.equals("dragon"))) {
        out/=2;
      }
      if (move.equals("grass")&&(typeOne.equals("flying")||typeOne.equals("poison")||typeOne.equals("bug")||typeOne.equals("steel")||typeOne.equals("fire")||typeOne.equals("grass")||typeOne.equals("dragon"))) {
        out/=2;
      }
      if (move.equals("electric")&&(typeOne.equals("grass")||typeOne.equals("electric")||typeOne.equals("dragon"))) {
        out/=2;
      }
      if (move.equals("psychic")&&(typeOne.equals("steel")||typeOne.equals("psychic"))) {
        out/=2;
      }
      if (move.equals("ice")&&(typeOne.equals("steel")||typeOne.equals("fire")||typeOne.equals("water")||typeOne.equals("ice"))) {
        out/=2;
      }
      if (move.equals("dragon")&&(typeOne.equals("steel"))) {
        out/=2;
      }
      if (move.equals("dark")&&(typeOne.equals("fighting")||typeOne.equals("dark")||typeOne.equals("fairy"))) {
        out/=2;
      }
      if (move.equals("fairy")&&(typeOne.equals("poison")||typeOne.equals("steel")||typeOne.equals("fire"))) {
        out/=2;
      }
      println("after resist" +out);
      //////////////////////////////////////////////////////////////////
      /////////////////SUPER EFFECTIVE//////////////////////////////////
      //////////////////////////////////////////////////////////////////
      if (move.equals("fighting")&&(typeOne.equals("normal")||typeOne.equals("rock")||typeOne.equals("steel")||typeOne.equals("ice")||typeOne.equals("dark"))) {
        out*=2;
      }
      if (move.equals("flying")&&(typeOne.equals("fighting")||typeOne.equals("bug")||typeOne.equals("grass"))) {
        out*=2;
      }
      if (move.equals("poison")&&(typeOne.equals("grass")||typeOne.equals("fairy")) ) {
        out*=2;
      }
      if (move.equals("ground")&&(typeOne.equals("poison")||typeOne.equals("rock")||typeOne.equals("steel")||typeOne.equals("fire")||typeOne.equals("electric"))) {
        out*=2;
        println("here");
      }
      if (move.equals("rock")&&(typeOne.equals("flying")||typeOne.equals("bug")||typeOne.equals("fire")||typeOne.equals("ice"))) {
        out*=2;
      }
      if (move.equals("bug")&&(typeOne.equals("grass")||typeOne.equals("psychic")||typeOne.equals("dark")) ) {
        out*=2;
      }
      if (move.equals("ghost")&&(typeOne.equals("ghost")||typeOne.equals("psychic")) ) {
        out*=2;
      }
      if (move.equals("steel")&&(typeOne.equals("rock")||typeOne.equals("ice")||typeOne.equals("fairy")) ) {
        out*=2;
      }
      if (move.equals("fire")&&(typeOne.equals("bug")||typeOne.equals("steel")||typeOne.equals("grass")||typeOne.equals("ice"))) {
        out*=2;
      }
      if (move.equals("water")&&(typeOne.equals("ground")||typeOne.equals("rock")||typeOne.equals("fire"))) {
        out*=2;
      }
      if (move.equals("grass")&&(typeOne.equals("ground")||typeOne.equals("rock")||typeOne.equals("water"))) {
        out*=2;
      }
      if (move.equals("electric")&&(typeOne.equals("flying")||typeOne.equals("water"))) {
        out*=2;
      }
      if (move.equals("psychic")&&(typeOne.equals("fighting")||typeOne.equals("poison"))) {
        out*=2;
      }
      if (move.equals("ice")&&(typeOne.equals("dragon")||typeOne.equals("ice")||typeOne.equals("fairy"))) {
        out*=2;
      }
      if (move.equals("dragon")&&(typeOne.equals("dragon"))) {
        out*=2;
      }
      if (move.equals("dark")&&(typeOne.equals("ghost")||typeOne.equals("psychic"))) {
        out*=2;
      }
      if (move.equals("fairy")&&(typeOne.equals("fighting")||typeOne.equals("dragon")||typeOne.equals("dark"))) {
        out*=2;
      }
      ////////////////////////////////////////////////////////////////////
      //////////////////////NO-EFFECT/////////////////////////////////////
      ////////////////////////////////////////////////////////////////////
      if (move.equals("ghost")&&typeOne.equals("normal")) {
        out=0;
      }
      if (move.equals("fighting")&&typeOne.equals("ghost")) {
        out=0;
      }
      if (move.equals("poison")&&typeOne.equals("steel")) {
        out=0;
      }
      if (move.equals("ground")&&typeOne.equals("flying")) {
        out=0;
      }
      if (move.equals("normal")&&typeOne.equals("ghost")) {
        out=0;
      }
      if (move.equals("electric")&&typeOne.equals("ground")) {
        out=0;
      }
      if (move.equals("psychic")&&typeOne.equals("dark")) {
        out=0;
      } 
      if (move.equals("dragon")&&typeOne.equals("fairy")) {
        out=0;
      }
      println("after all"+out);
    }
    return out;
  }
}
