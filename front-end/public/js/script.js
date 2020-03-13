hamburger = document.querySelector("#menu");
menu = document.querySelector(".menu");
body = document.querySelector("body");
menuMobile = document.querySelector("#menuMobile");
menuLogin = document.querySelector("#menuLogin");
menuMoptions = document.querySelector("#menuMoptions");
formLogin = document.querySelector("#formLogin");
img = document.querySelector("#imgLogin");

hamburger.addEventListener("click", function(event) {
  menu.classList.toggle("open");
  // body.classList.toggle("overflowhidden");
});

// menuLogin.addEventListener("click", function () {
//   menuMoptions.classList.toggle("openMenuLogin");
//   menuMobile.classList.toggle("openMenuLogin2");
//   formLogin.classList.toggle("showFormLogin");
//   img.src = "img/error.svg"
// })

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

if (!sessionStorage.getItem("user")) {
  document.querySelector(".logout").style.display = "none";
}

if (sessionStorage.getItem("user")) {
  document.getElementById("navNaoLogado").style.display = "none";
  document.getElementById("navLogado").style.display = "block";
} else {
  document.getElementById("navLogado").style.display = "none";
  document.getElementById("navNaoLogado").style.display = "block";
}

let sair = document.getElementById("sair");

sair.addEventListener("click", () => {
  sessionStorage.removeItem("user");
  window.location = "http://localhost:4000";
});
