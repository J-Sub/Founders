pragma solidity ^0.5.0;

contract Voting {
    // construct to initialize yes, no
    // vote for yes, no
    // get count of votes for each select 
    
    uint8 public candidateList;
    uint8 public voteReceivedYes;
    uint8 public voteReceivedNo;
    uint8 public voteReceivedResult;
    
    
    constructor(uint8 yesno) public {
        candidateList = yesno;
    }
    
    function voteforYes() public {
        voteReceivedYes += 1;
    }
    
    function voteforNo() public {
        voteReceivedNo += 1;
    }
    

    function voteCalculate() public view returns(bool){
        if (voteReceivedYes > voteReceivedNo){
            return true;
        } 
        else
            return false;
    }
    
    // // check whether vote is invalid
    // function validCandidate(uint8 candidate) view public returns(bool){
    //     for(uint i=0; i < candidateList.length; i++){
    //         if (candidateList[i]=candidate){
    //             return true;
    //         }
    //     }
    //     return false;
    // }
}
