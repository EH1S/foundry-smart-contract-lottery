// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {Raffle} from "../src/Raffle.sol";
import {HelperConfig} from "../script/HelperConfig.s.sol";
import {CreateSubscription, fundSubscription, AddConusmer} from "../script/interactions.s.sol";

contract DeployRaffle is Script {
    function DeployContract() public returns (Raffle, HelperConfig) {
        HelperConfig helperConfig = new HelperConfig();
        HelperConfig.NetworkConfig memory Config = helperConfig.getConfig();
        if (Config.subscriptionId == 0) {
            CreateSubscription createSubscription = new CreateSubscription();
            (Config.subscriptionId, Config.vrfCoordinator) =
                createSubscription.createSubscription(Config.vrfCoordinator, Config.account);
            fundSubscription Fundsubscription = new fundSubscription();
            Fundsubscription.fundsubscription(Config.vrfCoordinator, Config.subscriptionId, Config.link, Config.account);
        }

        vm.startBroadcast(Config.account);
        Raffle raffle = new Raffle(
            Config.entranceFee,
            Config.interval,
            Config.vrfCoordinator,
            Config.gasLane,
            Config.subscriptionId,
            Config.callbackGasLimit,
            Config.numWords
        );

        vm.stopBroadcast();
        AddConusmer addConsumer = new AddConusmer();
        addConsumer.addConsumer(address(raffle), Config.vrfCoordinator, Config.subscriptionId, Config.account);
        return (raffle, helperConfig);
    }

    function run() public {
        DeployContract();
    }
}
