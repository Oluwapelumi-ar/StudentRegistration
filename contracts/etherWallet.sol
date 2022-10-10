// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract EtherWallet {
    address payable public owner;
    event Recieved(address,uint);

    constructor() {
        owner = payable(msg.sender);
    }

    modifier checkOwner(){
        require(msg.sender == owner ,"Not Owner");
        _;
    }

    function withdraw(uint _amount) external {
        payable(msg.sender).transfer(_amount);
    }

    function viewBalance() external view returns (uint) {
        return address(this).balance;
    }
    
    receive() external payable {
        emit Recieved(msg.sender, msg.value);
    }
}