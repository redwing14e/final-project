void ds(){
  
  fill(255,0,50, 15);
  rect(0, 0, width, height);
  if(keyPressed){
    if (key == 'f' || key == 'F'){
      game=true;
      death=false;
    }
  }
}
