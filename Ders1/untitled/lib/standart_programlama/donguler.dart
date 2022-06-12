void main(){
  for(var x = 3;x<6;x++){
    print("x: $x");
  }

  for(var y = 10;y<21;y+=5){
    print("y: $y");
  }

  for(var z = 20; z > 9; z -= 5){
    print("z: $z");
  }

  int sayac = 1;

  while(sayac < 4){
    print("while sayac: $sayac");
    sayac++;

  }

  for(var i = 1; i<6;i++){
    print("Break : $i");
    if(i == 3){
      break;
    }
  }


  for(var i = 1; i<6;i++){

    if(i == 3){
      continue;
    }
    print("Continue : $i");
  }

}