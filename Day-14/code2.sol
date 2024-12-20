//SPDX-Licence-Identifier: GPL-3.0

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{

    //create a struct

    struct Book{
        string name;
        string writter;
        uint id;
        bool present;
    }

    Book book1;

    Book book2 = Book("DApps", "Anish", 8373, false);

    function set_Book1() public{
        book1 = Book("Blockchain", "Singh", 8464, true);
    }

    function get_Book1() public view returns(string memory, string memory, uint, bool){
        return(book1.name, book1.writter, book1.id, book1.present);
    }

    function get_Book2() public view returns(string memory, string memory, uint, bool){
        return(book2.name, book2.writter, book2.id, book2.present);
    }
} 