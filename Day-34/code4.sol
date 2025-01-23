// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssetOwnership {
    // Structure for an Asset
    struct Asset {
        uint256 assetID;
        string description;
        address currentOwner;
        string location;
        uint256 value;
    }

    // Mappings for assets and ownership
    mapping(uint256 => Asset) public assets; // assetID -> Asset
    mapping(address => uint256[]) public ownerAssets; // owner -> list of assetIDs

    // Events
    event AssetRegistered(uint256 assetID, address indexed owner);
    event OwnershipTransferred(uint256 assetID, address indexed from, address indexed to);
    event AssetDetailsUpdated(uint256 assetID, string description, uint256 value);

    // Modifier to check if the sender is the current owner
    modifier onlyOwner(uint256 assetID) {
        require(assets[assetID].currentOwner == msg.sender, "Not the owner of this asset.");
        _;
    }

    // Function to register a new asset
    function registerAsset(
        uint256 assetID,
        string memory description,
        string memory location,
        uint256 value
    ) external {
        require(assets[assetID].assetID == 0, "Asset already exists.");

        assets[assetID] = Asset({
            assetID: assetID,
            description: description,
            currentOwner: msg.sender,
            location: location,
            value: value
        });

        ownerAssets[msg.sender].push(assetID);

        emit AssetRegistered(assetID, msg.sender);
    }

    // Function to transfer ownership
    function transferOwnership(uint256 assetID, address newOwner) external onlyOwner(assetID) {
        require(newOwner != address(0), "New owner address cannot be zero.");

        // Update ownership
        address previousOwner = assets[assetID].currentOwner;
        assets[assetID].currentOwner = newOwner;

        // Update mappings
        _removeAssetFromOwner(previousOwner, assetID);
        ownerAssets[newOwner].push(assetID);

        emit OwnershipTransferred(assetID, previousOwner, newOwner);
    }

    // Function to update asset details
    function updateAssetDetails(uint256 assetID, string memory newDescription, uint256 newValue)
        external
        onlyOwner(assetID)
    {
        assets[assetID].description = newDescription;
        assets[assetID].value = newValue;

        emit AssetDetailsUpdated(assetID, newDescription, newValue);
    }

    // Function to get the list of assets owned by an address
    function getAssetsOfOwner(address owner) external view returns (uint256[] memory) {
        return ownerAssets[owner];
    }

    // Function to verify ownership
    function verifyOwnership(uint256 assetID) external view returns (address) {
        require(assets[assetID].assetID != 0, "Asset does not exist.");
        return assets[assetID].currentOwner;
    }

    // Internal function to remove an asset from the owner's list
    function _removeAssetFromOwner(address owner, uint256 assetID) internal {
        uint256[] storage assetList = ownerAssets[owner];
        for (uint256 i = 0; i < assetList.length; i++) {
            if (assetList[i] == assetID) {
                assetList[i] = assetList[assetList.length - 1]; // Replace with last element
                assetList.pop(); // Remove last element
                break;
            }
        }
    }
}
