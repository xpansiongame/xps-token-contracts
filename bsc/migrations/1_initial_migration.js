const XpsToken = artifacts.require("XpsToken");

module.exports = async function(deployer) {
  await deployer.deploy(XpsToken);
  let xpsToken = await XpsToken.deployed();
  console.log("xpsToken.address:", xpsToken.address);

};
