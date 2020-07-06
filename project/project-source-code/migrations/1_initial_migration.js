const Migrations = artifacts.require("Migrations");
const Blocklist = artifacts.require("Blocklist");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Blocklist);
};
