// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Box.sol";

contract BoxV2 is Box {
    string _animal;

    event AnimalCaptured(string _animalName);

    function captureAnimal(string memory _animalName) external {
        _animal = _animalName;

        emit AnimalCaptured(_animalName);
    }

    function exhibitAnimal() external view returns (string memory) {
        return _animal;
    }
}