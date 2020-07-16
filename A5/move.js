var dom;            
var x;              
var start;          
var end;            
var changes = false; 

function initText() {
  dom = document.getElementById('statement');
    
  start = parseInt(document.getElementById('startCoord').value);
  end = parseInt(document.getElementById('endCoord').value);
  document.getElementById('endCoord').max = screen.width.toString();


  setInterval(function() {moveTheText(); }, 1);
}

function moveTheText() {
  x = dom.style.left;
  x = x.match(/\d+/);
  
  if (!changes)
    moveTextLeft(); 
  else
    moveTextRight(); 
  
  flashTheText(x);
}

function moveTextRight() {
  if (x > start)
    x--;
    
  dom.style.left = x + "px";
  
  if (x == start)
    changes = false;
}

function moveTextLeft(){
  if(x < end)
    x++;
  
  dom.style.left = x + "px";
  
  if(x == end)
    changes = true;
  }

function flashTheText(pos) {
  if(pos % 5 == 0) {
    if(dom.style.color == "red")
      dom.style.color = "blue";
    else
      dom.style.color = "red";
  }
}

function setRange() {
  start = parseInt(document.getElementById('startCoord').value);
  end = parseInt(document.getElementById('endCoord').value);
  
  dom.style.left = start + "px";
  changes = false;
}

function setMinMax() {
  document.getElementById("startCoord").max = document.getElementById("endCoord").value;
  document.getElementById("endCoord").min = document.getElementById("startCoord").value;
}