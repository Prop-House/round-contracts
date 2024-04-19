// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Script} from 'forge-std/Script.sol';
import {AssetController} from 'src/AssetController.sol';
import {FarcasterClaimV1} from 'src/legacy/FarcasterClaimV1.sol';
import {IFarcasterClaimV1} from 'src/legacy/interfaces/IFarcasterClaimV1.sol';

contract RetroRound9 is Script {
    function run() public {
        uint256 ownerKey = vm.envUint('OWNER_PRIVATE_KEY');
        vm.startBroadcast(ownerKey);

        uint40 ROUND_ID = 36;

        FarcasterClaimV1 fc = FarcasterClaimV1(payable(vm.envAddress('FARCASTER_CLAIM_ADDRESS')));

        // ETH is offered in the round.
        fc.setAssetForRound(ROUND_ID, AssetController.Asset(AssetController.AssetType.ETH, address(0), 0));

        IFarcasterClaimV1.Winner[] memory winners = new IFarcasterClaimV1.Winner[](110);
        winners[0] = IFarcasterClaimV1.Winner({fid: 472, amount: 0.023529411764705882 ether});
        winners[1] = IFarcasterClaimV1.Winner({fid: 742, amount: 0.08823529411764705 ether});
        winners[2] = IFarcasterClaimV1.Winner({fid: 1079, amount: 0.014705882352941176 ether});
        winners[3] = IFarcasterClaimV1.Winner({fid: 1082, amount: 0.005882352941176471 ether});
        winners[4] = IFarcasterClaimV1.Winner({fid: 1097, amount: 0.005882352941176471 ether});
        winners[5] = IFarcasterClaimV1.Winner({fid: 1301, amount: 0.07352941176470588 ether});
        winners[6] = IFarcasterClaimV1.Winner({fid: 1556, amount: 0.032352941176470584 ether});
        winners[7] = IFarcasterClaimV1.Winner({fid: 1689, amount: 0.049999999999999996 ether});
        winners[8] = IFarcasterClaimV1.Winner({fid: 1894, amount: 0.008823529411764706 ether});
        winners[9] = IFarcasterClaimV1.Winner({fid: 2235, amount: 0.026470588235294117 ether});
        winners[10] = IFarcasterClaimV1.Winner({fid: 2240, amount: 0.026470588235294117 ether});
        winners[11] = IFarcasterClaimV1.Winner({fid: 2266, amount: 0.011764705882352941 ether});
        winners[12] = IFarcasterClaimV1.Winner({fid: 2433, amount: 0.2147058823529412 ether});
        winners[13] = IFarcasterClaimV1.Winner({fid: 2458, amount: 0.01764705882352941 ether});
        winners[14] = IFarcasterClaimV1.Winner({fid: 2480, amount: 0.005882352941176471 ether});
        winners[15] = IFarcasterClaimV1.Winner({fid: 2727, amount: 0.005882352941176471 ether});
        winners[16] = IFarcasterClaimV1.Winner({fid: 2824, amount: 0.002941176470588235 ether});
        winners[17] = IFarcasterClaimV1.Winner({fid: 2982, amount: 0.014705882352941176 ether});
        winners[18] = IFarcasterClaimV1.Winner({fid: 3642, amount: 0.26176470588235295 ether});
        winners[19] = IFarcasterClaimV1.Winner({fid: 3700, amount: 0.061764705882352944 ether});
        winners[20] = IFarcasterClaimV1.Winner({fid: 3702, amount: 0.014705882352941176 ether});
        winners[21] = IFarcasterClaimV1.Winner({fid: 3711, amount: 0.08529411764705883 ether});
        winners[22] = IFarcasterClaimV1.Winner({fid: 3734, amount: 0.05294117647058824 ether});
        winners[23] = IFarcasterClaimV1.Winner({fid: 3750, amount: 0.06470588235294117 ether});
        winners[24] = IFarcasterClaimV1.Winner({fid: 3827, amount: 0.07058823529411765 ether});
        winners[25] = IFarcasterClaimV1.Winner({fid: 3895, amount: 0.05294117647058824 ether});
        winners[26] = IFarcasterClaimV1.Winner({fid: 3974, amount: 0.011764705882352941 ether});
        winners[27] = IFarcasterClaimV1.Winner({fid: 4134, amount: 0.008823529411764706 ether});
        winners[28] = IFarcasterClaimV1.Winner({fid: 4167, amount: 0.014705882352941176 ether});
        winners[29] = IFarcasterClaimV1.Winner({fid: 4567, amount: 0.01764705882352941 ether});
        winners[30] = IFarcasterClaimV1.Winner({fid: 4787, amount: 0.05 ether});
        winners[31] = IFarcasterClaimV1.Winner({fid: 4795, amount: 0.026470588235294117 ether});
        winners[32] = IFarcasterClaimV1.Winner({fid: 5450, amount: 0.005882352941176471 ether});
        winners[33] = IFarcasterClaimV1.Winner({fid: 5460, amount: 0.06176470588235294 ether});
        winners[34] = IFarcasterClaimV1.Winner({fid: 6852, amount: 0.014705882352941176 ether});
        winners[35] = IFarcasterClaimV1.Winner({fid: 7143, amount: 0.014705882352941176 ether});
        winners[36] = IFarcasterClaimV1.Winner({fid: 7418, amount: 0.005882352941176471 ether});
        winners[37] = IFarcasterClaimV1.Winner({fid: 7759, amount: 0.01764705882352941 ether});
        winners[38] = IFarcasterClaimV1.Winner({fid: 9280, amount: 0.061764705882352944 ether});
        winners[39] = IFarcasterClaimV1.Winner({fid: 9290, amount: 0.005882352941176471 ether});
        winners[40] = IFarcasterClaimV1.Winner({fid: 10575, amount: 0.020588235294117647 ether});
        winners[41] = IFarcasterClaimV1.Winner({fid: 10605, amount: 0.04705882352941175 ether});
        winners[42] = IFarcasterClaimV1.Winner({fid: 10810, amount: 0.020588235294117647 ether});
        winners[43] = IFarcasterClaimV1.Winner({fid: 11508, amount: 0.11176470588235293 ether});
        winners[44] = IFarcasterClaimV1.Winner({fid: 11990, amount: 0.020588235294117647 ether});
        winners[45] = IFarcasterClaimV1.Winner({fid: 11998, amount: 0.04705882352941176 ether});
        winners[46] = IFarcasterClaimV1.Winner({fid: 12342, amount: 0.05882352941176469 ether});
        winners[47] = IFarcasterClaimV1.Winner({fid: 12590, amount: 0.002941176470588235 ether});
        winners[48] = IFarcasterClaimV1.Winner({fid: 12778, amount: 0.011764705882352941 ether});
        winners[49] = IFarcasterClaimV1.Winner({fid: 13006, amount: 0.07647058823529411 ether});
        winners[50] = IFarcasterClaimV1.Winner({fid: 13432, amount: 0.005882352941176471 ether});
        winners[51] = IFarcasterClaimV1.Winner({fid: 14466, amount: 0.014705882352941176 ether});
        winners[52] = IFarcasterClaimV1.Winner({fid: 15434, amount: 0.011764705882352941 ether});
        winners[53] = IFarcasterClaimV1.Winner({fid: 15441, amount: 0.00588235294117647 ether});
        winners[54] = IFarcasterClaimV1.Winner({fid: 15516, amount: 0.020588235294117647 ether});
        winners[55] = IFarcasterClaimV1.Winner({fid: 15899, amount: 0.026470588235294117 ether});
        winners[56] = IFarcasterClaimV1.Winner({fid: 17195, amount: 0.002941176470588235 ether});
        winners[57] = IFarcasterClaimV1.Winner({fid: 18560, amount: 0.07352941176470588 ether});
        winners[58] = IFarcasterClaimV1.Winner({fid: 18586, amount: 0.005882352941176471 ether});
        winners[59] = IFarcasterClaimV1.Winner({fid: 18655, amount: 0.01764705882352941 ether});
        winners[60] = IFarcasterClaimV1.Winner({fid: 19530, amount: 0.0911764705882353 ether});
        winners[61] = IFarcasterClaimV1.Winner({fid: 20081, amount: 0.00588235294117647 ether});
        winners[62] = IFarcasterClaimV1.Winner({fid: 20104, amount: 0.06176470588235293 ether});
        winners[63] = IFarcasterClaimV1.Winner({fid: 20133, amount: 0.005882352941176471 ether});
        winners[64] = IFarcasterClaimV1.Winner({fid: 20198, amount: 0.023529411764705882 ether});
        winners[65] = IFarcasterClaimV1.Winner({fid: 20413, amount: 0.041176470588235294 ether});
        winners[66] = IFarcasterClaimV1.Winner({fid: 20539, amount: 0.01764705882352941 ether});
        winners[67] = IFarcasterClaimV1.Winner({fid: 20558, amount: 0.014705882352941176 ether});
        winners[68] = IFarcasterClaimV1.Winner({fid: 23036, amount: 0.005882352941176471 ether});
        winners[69] = IFarcasterClaimV1.Winner({fid: 188986, amount: 0.002941176470588235 ether});
        winners[70] = IFarcasterClaimV1.Winner({fid: 193159, amount: 0.005882352941176471 ether});
        winners[71] = IFarcasterClaimV1.Winner({fid: 193574, amount: 0.011764705882352941 ether});
        winners[72] = IFarcasterClaimV1.Winner({fid: 210648, amount: 0.00588235294117647 ether});
        winners[73] = IFarcasterClaimV1.Winner({fid: 211246, amount: 0.005882352941176471 ether});
        winners[74] = IFarcasterClaimV1.Winner({fid: 212992, amount: 0.020588235294117647 ether});
        winners[75] = IFarcasterClaimV1.Winner({fid: 216260, amount: 0.002941176470588235 ether});
        winners[76] = IFarcasterClaimV1.Winner({fid: 221477, amount: 0.008823529411764704 ether});
        winners[77] = IFarcasterClaimV1.Winner({fid: 228911, amount: 0.002941176470588235 ether});
        winners[78] = IFarcasterClaimV1.Winner({fid: 230941, amount: 0.029411764705882353 ether});
        winners[79] = IFarcasterClaimV1.Winner({fid: 238425, amount: 0.008823529411764706 ether});
        winners[80] = IFarcasterClaimV1.Winner({fid: 243300, amount: 0.032352941176470584 ether});
        winners[81] = IFarcasterClaimV1.Winner({fid: 246523, amount: 0.020588235294117647 ether});
        winners[82] = IFarcasterClaimV1.Winner({fid: 247143, amount: 0.002941176470588235 ether});
        winners[83] = IFarcasterClaimV1.Winner({fid: 249586, amount: 0.055882352941176466 ether});
        winners[84] = IFarcasterClaimV1.Winner({fid: 253402, amount: 0.002941176470588235 ether});
        winners[85] = IFarcasterClaimV1.Winner({fid: 263648, amount: 0.005882352941176471 ether});
        winners[86] = IFarcasterClaimV1.Winner({fid: 263943, amount: 0.00588235294117647 ether});
        winners[87] = IFarcasterClaimV1.Winner({fid: 266767, amount: 0.002941176470588235 ether});
        winners[88] = IFarcasterClaimV1.Winner({fid: 268092, amount: 0.002941176470588235 ether});
        winners[89] = IFarcasterClaimV1.Winner({fid: 310213, amount: 0.002941176470588235 ether});
        winners[90] = IFarcasterClaimV1.Winner({fid: 320215, amount: 0.005882352941176471 ether});
        winners[91] = IFarcasterClaimV1.Winner({fid: 342737, amount: 0.008823529411764706 ether});
        winners[92] = IFarcasterClaimV1.Winner({fid: 352768, amount: 0.00588235294117647 ether});
        winners[93] = IFarcasterClaimV1.Winner({fid: 364940, amount: 0.005882352941176471 ether});
        winners[94] = IFarcasterClaimV1.Winner({fid: 371368, amount: 0.008823529411764706 ether});
        winners[95] = IFarcasterClaimV1.Winner({fid: 374408, amount: 0.017647058823529408 ether});
        winners[96] = IFarcasterClaimV1.Winner({fid: 383472, amount: 0.008823529411764704 ether});
        winners[97] = IFarcasterClaimV1.Winner({fid: 384860, amount: 0.002941176470588235 ether});
        winners[98] = IFarcasterClaimV1.Winner({fid: 384868, amount: 0.026470588235294117 ether});
        winners[99] = IFarcasterClaimV1.Winner({fid: 386213, amount: 0.020588235294117647 ether});
        winners[100] = IFarcasterClaimV1.Winner({fid: 388453, amount: 0.026470588235294117 ether});
        winners[101] = IFarcasterClaimV1.Winner({fid: 395360, amount: 0.002941176470588235 ether});
        winners[102] = IFarcasterClaimV1.Winner({fid: 396902, amount: 0.04117647058823529 ether});
        winners[103] = IFarcasterClaimV1.Winner({fid: 397084, amount: 0.014705882352941176 ether});
        winners[104] = IFarcasterClaimV1.Winner({fid: 397815, amount: 0.005882352941176471 ether});
        winners[105] = IFarcasterClaimV1.Winner({fid: 409379, amount: 0.035294117647058816 ether});
        winners[106] = IFarcasterClaimV1.Winner({fid: 418671, amount: 0.020588235294117647 ether});
        winners[107] = IFarcasterClaimV1.Winner({fid: 423827, amount: 0.005882352941176471 ether});
        winners[108] = IFarcasterClaimV1.Winner({fid: 465836, amount: 0.002941176470588235 ether});
        winners[109] = IFarcasterClaimV1.Winner({fid: 478527, amount: 0.008823529411764706 ether});

        fc.setWinnersForRound(ROUND_ID, winners);

        vm.stopBroadcast();
    }
}
