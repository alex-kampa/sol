pragma solidity ^0.4.24;

// ak@sikoba.com -- 09JUN2018

contract R256 {

    mapping(uint => uint) public record;

    event R(uint z);

    constructor() public {}

    function r(uint z) public {
        require(record[z] == 0);
        record[z] = now;
        emit R(z);
    }

    function rMultiple(uint[] zz) public {
        for (uint i; i < zz.length; i++) {
            r(zz[i]);
        }
    }

}