// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "@routerprotocol/evm-gateway-contracts@1.0.5/contracts/IGateway.sol";
import "@routerprotocol/evm-gateway-contracts@1.0.5/contracts/ICrossTalkApplication.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


// @routerprotocol/evm-gateway-contracts@1.0.5
// @routerprotocol/router-crosstalk-utils@1.0.5
contract coin is ERC20, ICrossTalkApplication{
  
    address owner;
    address public gatewayContract;
    uint64 public destGasLimit;
    mapping(uint64 => mapping(string => bytes)) public ourContractOnChains;
constructor( address payable gatewayAddress,
        uint64 _destGasLimit, string memory feePayer ) ERC20("Token","RTK")
        {
            gatewayContract=gatewayAddress;
            destGasLimit=_destGasLimit;
            owner=msg.sender;
            IGateway(gatewayAddress).setDappMetadata(feePayer);
        }
    modifier onlyOwner() {
        require(owner == msg.sender, "Caller is not owner");
        _;
    }
        function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
        function setContractOnChain(
        uint64 chainType,
        string memory chainId,
        address contractAddress
    ) external onlyOwner {
        ourContractOnChains[chainType][chainId] = toBytes(contractAddress);
    }
        function transferCrossChain(
        uint64 _dstChainType,
        string memory _dstChainId, // it can be uint, why it is string?
        uint64 destGasPrice,
        address recipient,
        uint256 amount
    ) public {
        bytes memory payload = abi.encode(amount, recipient);

        // burn token on src chain from msg.msg.sender
        _burn(msg.sender, amount);

      

        bytes[] memory addresses = new bytes[](1);
        addresses[0] = ourContractOnChains[_dstChainType][_dstChainId];
        bytes[] memory payloads = new bytes[](1);
        payloads[0] = payload;

        IGateway(gatewayContract).requestToDest(
            Utils.RequestArgs(1000000000000000, false),
            Utils.AckType(Utils.AckType.NO_ACK),
            Utils.AckGasParams(destGasLimit, destGasPrice),
            Utils.DestinationChainParams(
                destGasLimit,
                destGasPrice,
                _dstChainType,
                _dstChainId,
                "0x"
            ),
            Utils.ContractCalls(payloads, addresses)
        );

       
    }
        function toBytes(address a) public pure returns (bytes memory b) {
        assembly {
            let m := mload(0x40)
            a := and(a, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
            mstore(
                add(m, 20),
                xor(0x140000000000000000000000000000000000000000, a)
            )
            mstore(0x40, add(m, 52))
            b := m
        }
    }

    
    function setDestinationGasPrice(uint64 _destGasLimit) public{
        destGasLimit=_destGasLimit;
    }
    function handleRequestFromSource(
        bytes memory srcContractAddress,
        bytes memory payload,
        string memory srcChainId,
        uint64 srcChainType
    ) external returns (bytes memory) {

        
        require(
            keccak256(srcContractAddress) ==
                keccak256(ourContractOnChains[srcChainType][srcChainId]),
            "Invalid src chain"
        );
        (uint256 amount, address recipient) = abi.decode(
            payload,
            (uint256, address)
        );

        _mint(recipient, amount);

        
        return "";
    }

  function handleCrossTalkAck(
        uint64, // eventIdentifier
        bool[] memory, // execFlags
        bytes[] memory // execData
    ) external {}



}
