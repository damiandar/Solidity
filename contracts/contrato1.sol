//SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;
contract Storage {

    uint256 private number;

    /*
     * @dev Store value in variable
     * @param num value to store
     puede devolver public o external
     */
    function store(uint256 _num) external {
        number = _num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }
}