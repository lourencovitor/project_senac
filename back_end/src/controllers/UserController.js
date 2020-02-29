const User = require("../models/User");
const md5 = require("crypto-md5");

module.exports = {
  async store(req, res) {
    const { name, email, password } = req.body;
    const hash = md5(password, "hex");

    try {
      const user = await User.create({
        name,
        email,
        password: hash
      });

      return res.json(user).status(200);
    } catch (error) {
      console.log(error);
      return res.status(400).json({ message: error.original.sqlMessage });
    }
  },
  async index(req, res) {
    try {
      const user = await User.findAll();
      res.status(200).json(user);
    } catch (error) {
      console.log(error);
      return;
    }
  },
  async show(req, res) {
    const { id } = req.params;
    try {
      const exibeRes = await User.findOne({
        where: {
          id
        }
      });

      console.log(exibeRes === null);
      if (exibeRes === null || exibeRes === undefined) {
        return res.status(400).json({ message: "Usuário não encontrado" });
      }
      return res.status(200).json(exibeRes);
    } catch (error) {
      console.log(error);
      return res.status(400).json({ message: error.original.sqlMessage });
    }
  },
  async update(req, res) {
    const dados = req.body;
    const { id } = req.params;
    try {
      const exibeRes = await User.update(dados, {
        where: { id }
      });

      const { name } = req.body;

      if (exibeRes != 0) {
        res.status(200).json("Usuário " + name + "atualizado com sucesso!");
      } else {
        res.status(400).send("Dados não atualizados");
      }
    } catch (error) {
      console.log(error);
      return res.status(400).json({ message: error.original.sqlMessage });
    }
  },
  async delete(req, res) {
    const { id } = req.params;
    try {
      const exibeRes = await User.destroy({
        where: { id }
      });

      if (exibeRes != 0) {
        res.status(200).json("Usuário " + id + " excluido");
      } else {
        res.status(400).json({ message: "Usuário não existe" });
      }
    } catch (error) {
      console.log(error);
      return res.status(400).json({ message: error.original.sqlMessage });
    }
  }
};
