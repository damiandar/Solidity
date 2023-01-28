//requiero el nombre del contrato
var contrato1= artifacts.require("Storage");

module.exports=async function(deployer){
    await deployer.deploy(contrato1,"EdIToken","EDT",1000,18);
}