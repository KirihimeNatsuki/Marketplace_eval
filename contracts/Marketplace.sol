// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Marketplace{
    // Enum for shipping status
    enum ShippingStatus {
        Pending,
        Shipped,
        Delivered
    }

    // Default value = "Pending"
    ShippingStatus public status;

    // Event MissionComplete when ShippingStatus = 'Delivered'
    event MissionComplete();

    address public owner;

    // Constructor to initialise the contract with ShippingStatus = 'Pending'
    constructor() {
        status = ShippingStatus.Pending;
        owner = msg.sender;
    }

    // Modifier onlyOwner to avoid writing require onlyOwner in all functions
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }

    // Function Shipped to change ShippingStatus to Shipped
    function Shipped() public onlyOwner {
        status = ShippingStatus.Shipped;
    }

    // Function Delivered to change ShippingStatus to Delivered
    function Delivered() public onlyOwner {
        status = ShippingStatus.Delivered;
        emit MissionComplete();
    }

    // Function getStatus to returns the status of the shipment
    function getStatus() public onlyOwner view returns (ShippingStatus) {
        return status;
    }

    // Function Status to returns the status of the shipment on Customer point of view (payable)
    function Status() public payable returns (ShippingStatus) {
        require(msg.sender != owner, "Only customers can call this function");
        return status;
    }
}