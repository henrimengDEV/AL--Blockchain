// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../secondary/PlayerRepository.sol";

contract PlayerController {
    PlayerRepository playerRepository;

    constructor(PlayerRepository _playerRepository) {
        playerRepository = _playerRepository;
    }

    function getProfile(address _id) external returns (Player) {
        return playerRepository._getPlayerById(_id);
    }
}
