const PolynetDoors = artifacts.require('PolynetDoors');
const { expectRevert } = require('@openzeppelin/test-helpers');
const { assert } = require('chai');
const config = require('/home/eda369/.security/transfer-ASCII/config');

const wrapProvider = require('arb-ethers-web3-bridge').wrapProvider;
//const HDWalletProvider = require('@truffle/hdwallet-provider')
const sellerAddr = config.module.initAddr;
//const sellerPriv = config.module.initOwnerPriv
const buyerAddr = config.module.buyerAddr;

contract('PolynetDoors', (accounts) => {
  let PolynetDoorsContract;

  beforeEach(async () => {
    PolynetDoors.new();
    PolynetDoorsContract = await PolynetDoors.deployed();
  });

  describe('polygon', async () => {
    it('should deploy sucessfully', async () => {
      const address = PolynetDoorsContract.address;
      assert.notEqual(address, 0x0);
      assert.notEqual(address, '');
      assert.notEqual(address, null);
      assert.notEqual(address, undefined);
    });
  });

// describe is a function from Mocha that allows us to better organise our tests.
// It is possible to nest describe functions to create clear subsections of tests.
     describe("PolynetDoors contract", function() {
         it("Calling viewMessage() should return the most current message", async function() {
         console.log(await PolynetDoorsContract.viewMessage());
         });
     });
});
