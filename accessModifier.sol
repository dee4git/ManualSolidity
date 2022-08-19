pragma solidity 0.5.1;

contract Test {
    // Person[] public people; // array
    mapping(uint => Person) public ppl; // mapping
    uint256 public people_count = 0;
    uint256 opentingTime = 1544669573; // current epoch time
    address owner; // address is dataype (account)
    
    
    modifier onlyOwner(){
        require(msg.sender == owner);
        _; // else throw error
    }


    modifier onlyWhileOpen(){
        require(block.timestamp >= opentingTime);
        _;
    }


    constructor() public {
        owner = msg.sender;
    }


    struct Person {
        uint256 id;
        string _first_name;
        string _last_name;
    }


    function addPerson( 
        string memory _first_name, 
        string memory _last_name
        ) 
        public
        // onlyOwner
        onlyWhileOpen
        {
        
        // people.push(Person(_first_name, _last_name));
        // people_count +=1;
        incrementCount();
        ppl[people_count] = Person(people_count, _first_name,_last_name);
    }


    function incrementCount() internal { // not visible to public
        people_count +=1;

    }
}
