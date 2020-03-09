function cursosTecnicos() {
  let lslider = document.getElementById("lslider");
  axios
    .get(`http://localhost:8000/api/curso`)
    .then(response => {
      let res = response.data;
      const arquiteturaEUrbanismo = res.filter(response => {
        if (response.subArea === 1) {
          return response;
        }
      });
      console.log("Arquitetura e urbanismo", arquiteturaEUrbanismo);

      arquiteturaUrbanismo(arquiteturaEUrbanismo);

      const certificacoesEmTecnologia = res.filter(
        response => response.subArea === 2
      );
      console.log("Certificações em Tecnologia", certificacoesEmTecnologia);

      certificacoesTecnologia(certificacoesEmTecnologia);

      const desenvolvimentoSocial = res.filter(
        response => response.subArea === 3
      );
      console.log("Desenvolvimento Social", desenvolvimentoSocial);

      desenvolvimentooSocial(desenvolvimentoSocial);

      const eventosELazer = res.filter(response => response.subArea === 4);
      console.log("Eventos e Lazer", eventosELazer);

      eventosLazer(eventosELazer);

      const limpezaConservacaoEZeladoria = res.filter(
        response => response.subArea === 5
      );
      console.log(
        "Limpeza, Conservação e Zeladoria",
        limpezaConservacaoEZeladoria
      );

      limpezaConservacao(limpezaConservacaoEZeladoria);

      const meioAmbienteSegurançaESaúdeNoTrabalho = res.filter(
        response => response.subArea === 6
      );
      console.log(
        "Meio Ambiente, Segurança e Saúde no Trabalho",
        meioAmbienteSegurançaESaúdeNoTrabalho
      );

      meioAmbienteSeg(meioAmbienteSegurançaESaúdeNoTrabalho);

      const GestaoENegocios = res.filter(response => response.subArea === 6);
      console.log("Gestão e Negócios", GestaoENegocios);

      GestaoNegocios(GestaoENegocios);
    })
    .catch(error => {
      console.log(error);
    });
}

cursosTecnicos();

const listComponent = data => {
  return data
    .map(item => {
      return `
          <section class="caixa-cursos">
          <figure>
            <img src="${item.imagem}" alt="">
            <h3 class="titulo-curso">${item.description}</h3>
              <hr>
              <a href="${item.url}" class="linkCursos">Mais</a>             
          </figure>
        </section>
          `;
    })
    .join("");
};

const arquiteturaUrbanismo = arquiteturaEUrbanismo => {
  const el = document.getElementById("arquiteturaUrbanismo");
  return (el.innerHTML = listComponent(arquiteturaEUrbanismo));
};

const certificacoesTecnologia = certificacoesEmTecnologia => {
  const el = document.getElementById("certificacaoTecnologia");
  return (el.innerHTML = listComponent(certificacoesEmTecnologia));
};

const desenvolvimentooSocial = desenvolvimentoSocial => {
  const el = document.getElementById("desenvolvimentoSocial");
  return (el.innerHTML = listComponent(desenvolvimentoSocial));
};

const eventosLazer = eventosELazer => {
  const el = document.getElementById("eventosLazer");
  return (el.innerHTML = listComponent(eventosELazer));
};

const limpezaConservacao = limpezaConservacaoEZeladoria => {
  const el = document.getElementById("limpezaConserv");
  return (el.innerHTML = listComponent(limpezaConservacaoEZeladoria));
};

const meioAmbienteSeg = meioAmbienteSegurançaESaúdeNoTrabalho => {
  const el = document.getElementById("meioAmbiente");
  return (el.innerHTML = listComponent(meioAmbienteSegurançaESaúdeNoTrabalho));
};

const GestaoNegocios = GestaoENegocios => {
  const el = document.getElementById("gestaoNegocios");
  return (el.innerHTML = listComponent(GestaoENegocios));
};
