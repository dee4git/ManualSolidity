pragma solidity ^0.4.24;

contract MyContract {
    string value public;

    constructor() public {
        value = "myValue";
    }

    // function get() public view returns(string memory) {
    //     return value;
    // }
    function set(string memory _value) public{
        value = _value; // _ is used just to differenciate 
    }
}
