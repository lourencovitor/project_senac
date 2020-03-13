hamburger = document.querySelector("#menu");
menu = document.querySelector(".menu");
body = document.querySelector("body");
salvar = document.getElementById("salvar");
voltar = document.querySelector("#btn-cancelar");

document.querySelector("input").focus();

voltar.addEventListener("click", function() {
  window.location.href = "http://www.localhost:4000";
});

hamburger.addEventListener("click", function(event) {
  menu.classList.toggle("open");
  body.classList.toggle("overflowhidden");
});

document.addEventListener("click", function(event) {
  if (
    menu.classList.contains("open") &&
    !event.target.isEqualNode(hamburger) &&
    !event.target.isEqualNode(menu) &&
    !event.target.isEqualNode(body) &&
    !menu.contains(event.target)
  ) {
    menu.classList.remove("open");
  }
});

salvar.addEventListener("click", async () => {
  name = document.getElementById("name").value;
  email = document.getElementById("email").value;
  password = document.getElementById("password").value;
  const data = {
    name,
    email,
    password
  };
  console.log(data);

  try {
    const res = await axios.post(`http://localhost:8000/api/user`, data);
    console.log(res);
    alert("Usuário cadastrado com sucesso");
    window.location = "http://localhost:4000";
  } catch (error) {
    console.log(error);
    alert("Error ao cadastrar usuário");
  }
});
