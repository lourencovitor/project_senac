function cursosTecnicos() {
  let lslider = document.getElementById("lslider");
  axios
    .get(`http://localhost:8000/api/curso`)
    .then(response => {
      console.log(response);
      let res = response.data;
      const arquiteturaEUrbanismo = res.filter(
        response => response.subArea === 1
      );
      console.log("Arquitetura e urbanismo", arquiteturaEUrbanismo);

      const certificacoesEmTecnologia = res.filter(
        response => response.subArea === 2
      );
      console.log("Certificações em Tecnologia", certificacoesEmTecnologia);

      const desenvolvimentoSocial = res.filter(
        response => response.subArea === 3
      );
      console.log("Desenvolvimento Social", desenvolvimentoSocial);

      const eventosELazer = res.filter(response => response.subArea === 4);
      console.log("Eventos e Lazer", eventosELazer);

      const limpezaConservacaoEZeladoria = res.filter(
        response => response.subArea === 5
      );
      console.log(
        "Limpeza, Conservação e Zeladoria",
        limpezaConservacaoEZeladoria
      );

      const meioAmbienteSegurançaESaúdeNoTrabalho = res.filter(
        response => response.subArea === 6
      );
      console.log(
        "Meio Ambiente, Segurança e Saúde no Trabalho",
        meioAmbienteSegurançaESaúdeNoTrabalho
      );

      const GestaoENegocios = res.filter(response => response.subArea === 6);
      console.log("Gestão e Negócios", GestaoENegocios);
    })
    .catch(error => {
      console.log(error);
    });
}

cursosTecnicos();
