AOS.init();

var modal = document.getElementById("myModal");
//var modalReg = document.getElementById("modalReg");
var btn = document.querySelector("#entrar");
//var btn2 = document.querySelector("#registrar");
//var btn3 = document.querySelector("#registrar2");
var span = document.getElementsByClassName("close-modal")[0];
//var span2 = document.getElementsByClassName("close-modal2")[0];

// MODAL
btn.addEventListener("click", function(){
    modal.classList.add('aparecer-modal');
    modal.classList.remove('sumir-modal');
})

//CAIXA para Fechar no X
span.addEventListener("click", function() {
modal.classList.add('sumir-modal');
modal.classList.remove('aparecer-modal');
})

// //CAIXA para Fechar no X
// span2.addEventListener("click", function() {
//   modalReg.classList.add('sumir-modalRegistro');
//   modalReg.classList.remove('aparecer-modalRegistro');
//   })

// Fechar modal, no target do modal
window.addEventListener("click", function(event) {
  if (event.target == modal) {
    modal.classList.add('sumir-modal');
    modal.classList.remove('aparecer-modal');
  }
})

// // Fechar modal, no target do modal
// window.addEventListener("click", function(event) {
//   if (event.target == modalReg) {
//     modalReg.classList.add('sumir-modalRegistro');
//     modalReg.classList.remove('aparecer-modalRegistro');
//   }
// })

// btn2.addEventListener("click", function(){
//   modalReg.classList.add('aparecer-modalRegistro');
//   modalReg.classList.remove('sumir-modalRegistro');
//   modal.classList.add('sumir-modal');
//   modal.classList.remove('aparecer-modal');
// })

// btn3.addEventListener("click", function(){
//   modalReg.classList.add('aparecer-modalRegistro');
//   modalReg.classList.remove('sumir-modalRegistro');
//   modal.classList.add('sumir-modal');
//   modal.classList.remove('aparecer-modal');
// })