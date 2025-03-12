// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{

    function getResult() public view returns(uint){
        uint local_var1 = 1;
        uint local_var2 = 2;
        uint result = local_var1 + local_var2;

        return result;
    }
}
