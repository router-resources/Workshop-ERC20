Step 1 ) Open Remix IDE https://remix.ethereum.org/  => Create a new file => paste the code

Step 2) Install Metamask extension => Create new account

Step 3) Connect to Mumbai Network :-
1. Go to https://mumbai.polygonscan.com/
2. Scroll down to the bottom end and click on Add Mumbai Network <br/>
<img width="413" alt="image" src="https://user-images.githubusercontent.com/124175970/221346184-158921ef-8a72-4197-9706-2e0fb052513b.png">


Step 4) Connect to Fuji Network :-
	1. Go to https://testnet.snowtrace.io/ 
2. Scroll down to the bottom end and click on Add C-Chain ( Fuji ) Network 
<br/>
<img width="479" alt="image" src="https://user-images.githubusercontent.com/124175970/221346200-dce7c091-069d-49b3-9dae-c77b69f5f23d.png">


Step 5) Come to Remix again and compile the code

Step 6) Select Inject Provider from Environments in Deployments section<br/>
<img width="241" alt="image" src="https://user-images.githubusercontent.com/124175970/221346226-e0e851b9-8212-481f-9901-26793e19fa1a.png">


Step 7) Switch to Fuji Network and copy your wallet address  

Step 8) Add faucet to your account by visiting https://faucet.avax.network/  and pasting your wallet address and then click on REQUEST 2 AVAX <br/>
<img width="332" alt="image" src="https://user-images.githubusercontent.com/124175970/221346259-23639bf9-22dd-4b01-a3ed-10f738ae6873.png">


Step 9) Switch to Mumbai Network https://mumbai.polygonscan.com/ and copy your wallet address  

Step 10) Add faucet to your account by visiting https://faucet.polygon.technology/ and pasting your wallet address and then click on Submit<br/>
<img width="274" alt="image" src="https://user-images.githubusercontent.com/124175970/221346290-f0183c5a-217b-4ba3-8860-e866f6265372.png">


Step 11) Come back to Remix and switch to Fuji Network

Step 12) Deploy the contract by passing Gateway address of Fuji and DestGasLimit as 500000

Step 13) Switch to Mumbai Network and deploy the contract by passing Gateway address of Mumbai and DestGasLimit as 500000

Gateway addresses for respective chains can be found here https://devnet.lcd.routerprotocol.com/router-protocol/router-chain/multichain/chain_config

Step 14) Switch to Fuji Network again and call setContractOnChain  
Function of the Fuji contract passing in 0, 80001 and address of the Mumbai contract deployed respectively<br/>
<img width="269" alt="image" src="https://user-images.githubusercontent.com/124175970/221346331-d08e77aa-2dad-421e-9297-6a6d19ceea52.png">



Step 15) Switch to Mumbai Network and call setContractOnChain  
Function of the Mumbai contract passing in 0, 43113 and address of the Fuji Contract Deployed 

Step 16) Switch to Fuji Network and mint some ERC20 Tokens through mint function of the Fuji contract deployed<br/>
<img width="280" alt="image" src="https://user-images.githubusercontent.com/124175970/221346368-d761fb5c-4596-44c8-973d-0c97e800c267.png">



Step 17) Copy the Fuji contract address , visit https://devnet-faucet.routerprotocol.com/ , paste the address there and click on Get Route to get Route Tokens in the Fuji contract <br/>
<img width="251" alt="image" src="https://user-images.githubusercontent.com/124175970/221346388-5dbdaa27-58aa-4633-b6cd-05eb9ebc39da.png">



Step 18) Come back to Remix ,and Call TransferCrossChain function of the Fuji contract deployed , passing in 0, 80001 ,30000000000 ,recipient address and amount as parameters<br/>
<img width="198" alt="image" src="https://user-images.githubusercontent.com/124175970/221346412-bce85fb1-139f-42ed-ade6-e916b09b5fdd.png">



Step 19) You can see the CrossTalk transactions here https://devnet-explorer.routerprotocol.com/crosstalks 

Step 20) When all 4 green checks are there, come back to Remix again and switch to Mumbai Network

Step 21) Call the function , totalSupply of the Mumbai contract deployed to see the ERC20 tokens transferred



	

