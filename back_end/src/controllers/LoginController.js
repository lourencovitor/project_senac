const User = require("../models/User");
const md5 = require("crypto-md5");

module.exports = {
  async show(req, res) {
    const { email, password } = req.body;
    const hash = md5(password, "hex");

    var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
    if (!reg.test(email)) {
      return res.json({ message: `Email invalido` });
    }

    try {
      const exibeRes = await User.findOne({
        where: {
          email,
          password: hash
        }
      });

      if (exibeRes === null) {
        return res.status(400).json({ message: "Usuario não encontrado" });
      }
      res.status(200).json(exibeRes);
    } catch (error) {
      console.log(error);
      return res.status(400).json({ message: error.original.sqlMessage });
    }
  }
};
