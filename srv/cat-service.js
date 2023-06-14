const cds = require("@sap/cds");

module.exports = async function (srv) {
  srv.on("READ", "UserScopes", async (req) => {
    const users = [
      {
        username: req.user.id,
        district: req.user.attr.district,
        role_check_with_pattern: req.user.is("%401%"),
        role_check_with_role_name_401: req.user.is('treatmentcost401update'),
        role_check_with_role_name_402: req.user.is('treatmentcost402update'),
        role_check_with_role_name_403: req.user.is('treatmentcost403update')
      },
    ];
    return users;
  });

}