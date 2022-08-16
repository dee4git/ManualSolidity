pragma solidity 0.5.1;

contract Test {
    // Person[] public people; // array
    mapping(uint => Person) public ppl; // mapping
    uint256 public people_count = 0;


    struct Person {
        uint256 id;
        string _first_name;
        string _last_name;
    }

    function addPerson( string memory _first_name, string memory _last_name) public {
        
        // people.push(Person(_first_name, _last_name));
        people_count +=1;
        ppl[people_count] = Person(people_count, _first_name,_last_name);
    }
}
