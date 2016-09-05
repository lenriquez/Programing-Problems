var a = "1.0.0.0/16";
var b = a.split("/");
var ip = b[0].split(".");
var index = (b[1]/8) - 1;
for(;index < 4; index++){
  if (ip[index] !== '0'){
    console.log("This should not be show");
  }
}


