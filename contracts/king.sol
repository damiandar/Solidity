//SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;
contract King {

    address owner;
    uint public montoGuardado;
    address public Rey;

    constructor() payable {
        owner = msg.sender;
        montoGuardado=msg.value;
        Rey=msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender==owner,"no sos el owner");
        _;
    }
    function apostar() external payable{
        require(msg.value>0, "debe enviar ethers");
        if(msg.value > montoGuardado){

            Rey=msg.sender;
            montoGuardado=msg.value;
        }
    }
    function Extraer() external payable onlyOwner {
        require(msg.value > 0, "ReceiveEther contract can only receive positive amounts of Ether.");
        payable(msg.sender).transfer(address(this).balance);
    }
}

