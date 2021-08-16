const Voting = artifacts.require("Voting");

contract("Voting", accounts => {
  it("should put 10000 MetaCoin in the first account", async () => {
    const instance = await Voting.deployed();
    const balance = await instance.getVotes.call(accounts[0]);
    assert.equal(balance.valueOf(), 0, "10000 wasn't in the first account");
  });

  it("should call a function that depends on a linked library", async () => {
    const instance = await Voting.deployed();
    const votes = await instance.getVotes.call(accounts[0]);
    

    assert.equal(
      votes,
      0,
      "Library function returned unexpeced function, linkage may be broken",
    );
  });

});
