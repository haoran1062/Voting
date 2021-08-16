pragma solidity >=0.4.21 <0.7.0;
// pragma experimental ABIEncoderV2;


contract Voting{

    string[] public candidateList;
    mapping(string => uint8) public votesReceived;

    constructor(string[] memory candidateNames) public{
        candidateList = candidateNames;
    }

    function voteForCandidate(string memory candidate) public returns(uint8){
        // require((ValidCandidate(candidate)));
        votesReceived[candidate] += 1;
        return votesReceived[candidate];
        // return 1;
    }

    function totalVotesFor(string memory candidate) view public returns(uint8){
        // require(ValidCandidate(candidate));
        return votesReceived[candidate];
    }

    // function ValidCandidate(string memory candidate) view public returns(bool){
    //     for(uint8 i = 0; i < candidateList.length; i++){
    //         if(keccak256(abi.encodePacked(candidateList[i])) == keccak256(abi.encodePacked(candidate))){
    //             return true;
    //         }
    //     }
    //     return false;
    // }

    function getVotes(string memory candidate) view public returns(uint8){
        return votesReceived[candidate];
    }
}