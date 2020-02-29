const Curso = require("../models/Curso");

module.exports = {
  async store(req, res) {
    const { description, url, banner, ativo, imagem, subArea } = req.body;
    try {
      const createCurs = await Curso.create({
        description,
        url,
        banner,
        ativo,
        imagem,
        subArea
      });
      return res.status(200).json(createCurs);
    } catch (error) {
      return res.status(400).json({ message: error });
    }
  },
  async index(req, res) {
    try {
      const consult = await Curso.findAll();
      return res.status(200).json(consult);
    } catch (error) {
      return res.status(400).json({ message: "Algo deu errado" });
    }
  },
  async show(req, res) {
    try {
      const { id } = req.params;

      const consult = await Curso.findOne({
        where: {
          id
        }
      });

      if (consult) {
        return res.status(200).json(consult);
      }

      return res.status(400).json({ message: "Nenhuma Area encontrada" });
    } catch (error) {
      console.log(error);
      res.status(400).json({ message: "Algo deu errado" });
    }
  },
  async update(req, res) {
    try {
      const { id } = req.params;
      const dados = req.body;

      const consult = await Curso.update(dados, {
        where: {
          id
        }
      });

      if (consult == 1) {
        return res
          .status(200)
          .json({ message: "Dados Atualizados com sucesso" });
      }

      return res.status(400).json({ message: "Dados Não podem ser alterados" });
    } catch (error) {
      console.log(error);
      return res.status(400).json({ message: error.original.sqlMessage });
    }
  },
  async delete(req, res) {
    try {
      const { id } = req.params;

      const consult = await Curso.destroy({
        where: {
          id
        }
      });

      if (consult) {
        res.status(200).json({ message: "Dados deletados com sucesso" });
      }

      res.status(200).json({ message: "Dados não deletados" });
    } catch (error) {
      console.log(error);
      return res.status(400).json({ message: error.original.sqlMessage });
    }
  }
};
