// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../domain/Player.sol";

contract PlayerRepository is Player {
    mapping(address => PlayerEntity) players;

    function _getPlayerById(address _id)
        internal
        view
        returns (PlayerEntity memory)
    {
        return players[_id];
    }

    function _createPlayer(
        address _id,
        string memory _username
    ) internal {
        players[_id] = (PlayerEntity(_id, _username));
    }

    function _deletePlayerById(address _id) internal {
        delete players[_id];
    }
}
