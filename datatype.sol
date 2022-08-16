pragma solidity ^0.4.24;

contract MyContract {
    string public constant string_value = 'New Value';
    
    // data types
    // bool public my_bool = true;
    // int public my_int = -1;
    // uint public my_uint = 1;
    // uint8 public my_uint8 = 8;

    // enum -> list
    enum State { Wating, Ready, Active }
    State public state;
    constructor() public {
        state = State.Wating; // default state
    }
    function active() public {
        state = State.Active;
    }
    function is_active() public view returns(bool) {
        return state == State.Active;
    }



 
}
