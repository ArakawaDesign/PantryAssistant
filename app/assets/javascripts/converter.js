function lengthConverter(valNum, init, result) {
  document.getElementById("outputMeters").innerHTML=convert(valNum, init, result);
}

function convert(num, init, result) {
    if (init === "tsp") {
        if (result === "tbsp" ) {
            return num/3
        }
    }
}