



function changeAdmin(){
console.log("yes")
console.log(this)
var xhr = new XMLHttpRequest();   // new HttpRequest instance
xhr.open("PUT", "../../api/users/" + this.id + ".json");
xhr.setRequestHeader("Content-Type", "application/json");
xhr.send(JSON.stringify({admin:this.value}));


var id = document.getElementById(this.id);
var p = id.nextElementSibling.innerHTML = this.value;

console.log(p)



}


document.addEventListener('DOMContentLoaded',function() {
    var field = document.getElementsByClassName("user")
    for (var i = 0; i < field.length; i++) {
      console.log("add")
      field[i].onchange=changeAdmin;
    }
},false);


// var field = document.getElementsByClassName("user")
// for (var i = 0; i < field.length; i++) {
//   console.log("yes")
//   field[i].onchange=changeAdmin;
// }

// document.addEventListener('DOMContentLoaded',function() {
//     document.querySelector('select[name="ice-cream"]').onchange=changeEventHandler;
// },false);
