//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    // SimpleStorage를 요소로 갖는 배열 simpleStorafeArray.
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        // 새로운 simpleStorage를 만들고
        SimpleStorage simpleStorage = new SimpleStorage();
        // 위에서 만든 배열에 방금 만든 simpleStorage의 주소 추가.
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface

        //simpleStorage의 store함수로 simpleStorageNumber 저장.
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        // 단순히 simpleStorage를 보여주기만 하는 retrieve함수 반환
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}