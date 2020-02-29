const Area = require("../models/Area");

module.exports = {
  async store(req, res) {
    const { description, active } = req.body;

    const consultDescription = await Area.findOne({
      where: {
        description
      }
    });

    if (consultDescription) {
      return res.status(406).json({ message: "Area já existente" });
    }

    try {
      const area = await Area.create({
        description,
        active
      });

      return res.status(200).json(area);
    } catch (error) {
      return res.status(400).json({ message: error.original.sqlMessage });
    }
  },
  async index(req, res) {
    try {
      const consult = await Area.findAll();
      return res.status(200).json(consult);
    } catch (error) {
      console.log(error);
      return res.status(400).json({ message: "Algo deu errado" });
    }
  },
  async show(req, res) {
    try {
      const { id } = req.params;

      const consult = await Area.findOne({
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
      return res.status(400).json({ message: error.original.sqlMessage });
    }
  },
  async update(req, res) {
    try {
      const { id } = req.params;
      const dados = req.body;

      const consult = await Area.update(dados, {
        where: {
          id
        }
      });

      if (consult == "1") {
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

      const consult = await Area.destroy({
        where: {
          id
        }
      });

      if (consult) {
        res.status(200).json({ message: "Dados deletados com sucesso" });
      }

      res.status(404).json({ message: "Dados não deletados" });
    } catch (error) {
      console.log(error);
      res.status(400).json({ message: "Algo deu errado" });
    }
  }
};
