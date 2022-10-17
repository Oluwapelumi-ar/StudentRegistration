// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract shuksToken {

    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    constructor(string memory name_, string memory symbol_,uint totalSupply_) {
        _name = name_;
        _symbol = symbol_;
        _totalSupply = totalSupply_;
    }

    function name() public view virtual  returns (string memory) {
        return _name;
    }

    
    function symbol() public view virtual  returns (string memory) {
        return _symbol;
    }

    function totalSupply() public view virtual  returns (uint256) {
        return _totalSupply;
    }
}