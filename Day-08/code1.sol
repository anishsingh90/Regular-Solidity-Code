//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract SolidityTest{
    uint[] public data;

    uint j = 0;
 
    function loop() public returns(uint[] memory){
        while(j<5){
            j++;
            data.push(j);
        }
        return data;
    }
}