function converter(num, init, result) {

  var e1 = document.getElementById("init");
  var m1 = e1.options[e1.selectedIndex].value;
  
  var e2 = document.getElementById("result");
  var m2 = e2.options[e2.selectedIndex].value;
  
  var finalVal = 0;
  var finalMmt = "";
  if (num) {
    switch(m1) {
      case "tsp":
        if (m2 === "tsp") {
          finalVal = num;
        }
        if (m2 === "tbsp") {
          finalVal = num * 0.333333;
        }
        if (m2 === "cup") {
          finalVal = num * 0.020833;
        }
        if (m2 === "pnt") {
          finalVal = num * 0.010417;
        }
        if (m2 === "qt") {
          finalVal = num * 0.005208;
        }
        if (m2 === "gal") {
          finalVal = num * 0.001302;
        }
        break;
        
      case "tbsp":
        if (m2 === "tsp") {
          finalVal = num * 3;
        }
        if (m2 === "tbsp") {
          finalVal = num;
        }
        if (m2 === "cup") {
          finalVal = num * 0.0625;
        }
        if (m2 === "pnt") {
          finalVal = num * 0.03125;
        }
        if (m2 === "qt") {
          finalVal = num * 0.015625;
        }
        if (m2 === "gal") {
          finalVal = num * 0.003906;
        }
        break;
        
      case "cup":
        if (m2 === "tsp") {
          finalVal = num * 48;
        }
        if (m2 === "tbsp") {
          finalVal = num * 16;
        }
        if (m2 === "cup") {
          finalVal = num;
        }
        if (m2 === "pnt") {
          finalVal = num * 0.5;
        }
        if (m2 === "qt") {
          finalVal = num * 0.25;
        }
        if (m2 === "gal") {
          finalVal = num * 0.0625;
        }
        break;
        
      case "pnt":
        if (m2 === "tsp") {
          finalVal = num * 96;
        }
        if (m2 === "tbsp") {
          finalVal = num * 32;
        }
        if (m2 === "cup") {
          finalVal = num * 2;
        }
        if (m2 === "pnt") {
          finalVal = num;
        }
        if (m2 === "qt") {
          finalVal = num * 0.5;
        }
        if (m2 === "gal") {
          finalVal = num * 0.125;
        }
        
        break;
        
      case "qt":
        if (m2 === "tsp") {
          finalVal = num * 192;
        }
        if (m2 === "tbsp") {
          finalVal = num * 64;
        }
        if (m2 === "cup") {
          finalVal = num * 4;
        }
        if (m2 === "pnt") {
          finalVal = num * 2;
        }
        if (m2 === "qt") {
          finalVal = num;
        }
        if (m2 === "gal") {
          finalVal = num * 0.25;
        }
        
        break;
        
      case "gal":
        if (m2 === "tsp") {
          finalVal = num * 768;
        }
        if (m2 === "tbsp") {
          finalVal = num * 256;
        }
        if (m2 === "cup") {
          finalVal = num * 16;
        }
        if (m2 === "pnt") {
          finalVal = num * 8;
        }
        if (m2 === "qt") {
          finalVal = num * 4;
        }
        if (m2 === "gal") {
          finalVal = num;
        }
        
        break;
        
      case "oz":      
        if (m2 === "lb") {
          finalVal = num * 0.0625;
        }
        if (m2 === "oz") {
          finalVal = num;
        }
        if (m2 === "g") {
          finalVal = num * 28.349523;
        }
        break;
        
      case "lb":      
        if (m2 === "lb") {
          finalVal = num;
        }
        if (m2 === "oz") {
          finalVal = num * 16;
        }
        if (m2 === "g") {
          finalVal = num * 453.59237;
        }
        break;
        
      case "g":      
        if (m2 === "lb") {
          finalVal = num * 0.002205;
        }
        if (m2 === "oz") {
          finalVal = num * 0.035274;
        }
        if (m2 === "g") {
          finalVal = num;
        }
        break;
      
      case "F":      
        if (m2 === "F") {
          finalVal = num;
        }
        if (m2 === "C") {
          finalVal = ((num) - 32 ) * 5 / 9;
        }
        if (m2 === "K") {
          finalVal = (((num) - 32) * 5 / 9 ) + 273.15;
        }
        break;
        
      case "C":      
        if (m2 === "F") {
          finalVal = (num) * 9 / 5 + 32;
        }
        if (m2 === "C") {
          finalVal = num;
        }
        if (m2 === "K") {
          finalVal = (num) + 273.15;
        }
        break;
      
        
      case "K":      
        if (m2 === "F") {
          finalVal =  ((num) - 273.15) * 9 / 5 + 32;
        }
        if (m2 === "C") {
          finalVal = (num) - 273.15;
        }
        if (m2 === "K") {
          finalVal = num;
        }
        break;
      
      
      default:
        finalVal = "Please choose another value.";
    }
  }
  console.log(finalVal);
  if (finalVal) {
    document.getElementById("output").innerHTML = finalVal + " " + m2;
  }
  else {
    document.getElementById("output").innerHTML = "Please enter new value."
  }
}
