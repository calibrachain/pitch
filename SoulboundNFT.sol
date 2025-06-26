// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SoulboundNFT is ERC721, Ownable {
    uint256 private _tokenIdCounter;

    // Mapping to track if an address has an NFT
    mapping(address => bool) private _hasMinted;

    constructor() ERC721("SoulboundNFT", "SBNFT") Ownable(msg.sender) {}

    // Mint function, restricted to owner or specific logic
    function mint(address to) public onlyOwner {
        require(!_hasMinted[to], "Address already has a soulbound NFT");
        _tokenIdCounter += 1;
        _safeMint(to, _tokenIdCounter);
        _hasMinted[to] = true;
    }

    // Override transfer functions to disable them
    function _transfer(address from, address to, uint256 tokenId) internal override {
        revert("Soulbound: Transfers are disabled");
    }

    function transferFrom(address from, address to, uint256 tokenId) public override {
        revert("Soulbound: Transfers are disabled");
    }

    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory _data) public override {
        revert("Soulbound: Transfers are disabled");
    }

    // Optional: Function to burn (if allowed)
    function burn(uint256 tokenId) public {
        require(ownerOf(tokenId) == msg.sender, "Only owner can burn");
        _burn(tokenId);
        _hasMinted[msg.sender] = false;
    }

    // Optional: Get token ID counter
    function getCurrentTokenId() public view returns (uint256) {
        return _tokenIdCounter;
    }
}
