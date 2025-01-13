// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Events{
    event balance(address account, string message, uint val);

    function setData(uint _val) public {
        emit balance(msg.sender, "Send by Owner", _val);
    }
}