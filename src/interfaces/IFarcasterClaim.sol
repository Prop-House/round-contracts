// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {AssetController} from 'src/AssetController.sol';

interface IFarcasterClaim {
    /// @notice Struct for a round winner and their award.
    struct Winner {
        uint256 fid;
        AssetController.Asset award;
    }

    /// @notice Thrown when an award has already been claimed.
    error ALREADY_CLAIMED();

    /// @notice Thrown when there is nothing to claim for a given round.
    error NOTHING_TO_CLAIM();

    /// @notice Thrown when an invalid `Claim` signature is provided.
    error INVALID_SIGNATURE();

    /// @notice Emitted when owner changes the signer address.
    event SignerSet(address oldSigner, address newSigner);

    /// @notice Emitted when winners are set for a given round.
    /// @param roundId The round ID.
    /// @param winners The round winners and their awards.
    event WinnersSet(uint256 indexed roundId, Winner[] winners);

    /// @notice Emitted when a Farcaster ID claims their award for a given round.
    /// @param roundId The round ID.
    /// @param fid The Farcaster ID.
    /// @param to The address that the award was sent to.
    event Claimed(uint256 indexed roundId, uint256 fid, address to);
}
