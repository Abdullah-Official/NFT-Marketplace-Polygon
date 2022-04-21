//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract NFT is ERC721URIStorage{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    address contractAddress; // this is for NFTMarket contract to optimize this contract.

    constructor(address marketplaceAddress) ERC721("Methaverse Tokens", "METT" ){
        // when we deploy the contract we need to pass the contract address (marketplace)
        contractAddress = marketplaceAddress;     
    }

    function createToken(string memory tokenURI) public returns(uint) {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);
        setApprovalForAll(contractAddress, true); // give marketplace approval for users to transact tokens between users;
        return newItemId;
    }

}
