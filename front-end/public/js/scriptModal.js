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


let logar = document.querySelector("#logar");
logar.addEventListener("click", async()=>{
  let login = document.querySelector("#login").value;
  let senha = document.querySelector("#login-senha").value;
  const data = {name:login, password:senha};
  Object.freeze(data)
  
  try {
    const res = await axios.post(`http://localhost:8000/api/login`, data);
    console.log(res);
    alert("Login efetuado com sucesso!");
  } catch (error) {
    console.log(error);
    alert("Senha ou usuário invalido!");
  }

})