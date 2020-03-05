let modal = document.getElementById("myModal");
let btn = document.querySelector("#entrar");
let span = document.getElementsByClassName("close-modal")[0];


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

// Fechar modal, no target do modal
window.addEventListener("click", function(event) {
  if (event.target == modal) {
    modal.classList.add('sumir-modal');
    modal.classList.remove('aparecer-modal');
  }
})
