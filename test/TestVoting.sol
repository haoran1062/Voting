pragma solidity >=0.4.21 <0.7.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Voting.sol";

contract TestMetacoin {
    function testInitialVoteUsingDeployedContract() public {
        string[] memory UserNames = new string[](3);
        UserNames[0] = "Alice";
        UserNames[1] = "Bob";
        UserNames[2] = "Cary";
        Voting voting = Voting(DeployedAddresses.Voting());

        Assert.equal(uint(1), uint(1), "One is One.");
        Assert.equal(
            voting.getVotes('Alice'),
            0,
            "Alice should have 0 votes initially"
        );

        // voting.voteForCandidate(UserNames[1]);

        // Assert.equal(
        //     voting.getVotes('Bob'),
        //     1,
        //     "Bob should have 1 votes initially"
        // );
    }

    // function testInitialVoteWithNewVoting() public {
    //     string[] memory UserNames = new string[](3);
    //     UserNames[0] = "Alice";
    //     UserNames[1] = "Bob";
    //     UserNames[2] = "Cary";
    //     Voting voting = new Voting(UserNames);

        

    //     Assert.equal(
    //         voting.getVotes('Alice'),
    //         0,
    //         "Alice should have 0 votes initially"
    //     );
    // }
}
