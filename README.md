# `CrossChain ERC-20 Step by Step Guide`

> Effortlessly transfer ERC-20 tokens from one chain to another. Made using Router Cross-Talk.

This project is built with [Router CrossTalk](https://dev.routerprotocol.com/crosstalk-library/overview/introduction)

Router Protocol is a solution introduced to address the issues hindering the usability of cross-chain liquidity migration in the DeFi ecosystem. It acts as a bridge connecting various layer 1 and layer 2 blockchains, allowing for the flow of contract-level data across them. The Router Protocol can either transfer tokens between chains or initiate operations on one chain and execute them on another.

Please check the [official documentation of Router Protocol](https://www.routerprotocol.com/) 


# ⭐️ `Star us`

If this repository helps you build cross-chain dapps faster and easier - please star this project, every star makes us very happy!

# 🤝 `Need help?`

If you need help or have other some questions - don't hesitate to write in our discord channel and we will check asap. [Discord link](https://discord.com/invite/xnb3nNYC). The best thing about this is the super active community ready to help at any time! We help each other.

# ✌️`Let's Begin 🚀`

Step 1) Open Remix IDE https://remix.ethereum.org/ 

Step 2) Create a new workspace 


<img width="600" alt="image" height="300" height="300" height="300" height="300" height="300" src="https://user-images.githubusercontent.com/124175970/222487874-7f661c6c-7ad1-4cd0-8364-216376b5eb8d.png">


Step 3) Create a new file, give a name and save it with ".sol" extension


<img width="600" alt="image" height="300" height="300" height="300" height="300" height="300" src="https://user-images.githubusercontent.com/124175970/222489012-d0697c9a-c7db-41d8-9591-8b3455862d0a.png">


Step 4) Copy the code from [CrossChainERC20.sol](https://github.com/router-resources/Workshop-ERC20/blob/main/CrossChainERC20.sol) and paste it in the editing area


<img width="600" alt="image" height="300" height="300" height="300" height="300" height="300" src="https://user-images.githubusercontent.com/124175970/222489772-ceecb651-0554-4c0a-8185-3684fae93b7a.png">


Step 5) Install Metamask extension from https://metamask.io/download/ and to your browser


<img width="600" alt="image" height="100" src="https://user-images.githubusercontent.com/124175970/222491847-f177213e-ae1b-4d17-979d-94754c3cd761.png">


Step 6) Open the extension and click on Create Wallet



<img width="600" alt="image" height="300" height="300" height="300" height="300" height="300" src="https://user-images.githubusercontent.com/124175970/222492848-56c8be45-df82-43a6-9ab1-721ed48d5757.png">


Step 7) Set a password for your wallet



<img width="600" alt="image" height="300" height="300" height="300" height="300" height="300" src="https://user-images.githubusercontent.com/124175970/222493207-0b3f9cb0-e0dd-496e-b2f2-58a808afee77.png">


Step 8) Select either of the 2 options. Securing your wallet is recommended.But for the time being, we can go with the 1st option.


<img width="600" alt="image" height="300" height="300" height="300" height="300" height="300" src="https://user-images.githubusercontent.com/124175970/222493438-d097d115-72de-4f46-8c5e-690a442e94a7.png">



Step 9) Connect to Mumbai Network :-
1. Go to https://mumbai.polygonscan.com/
2. Scroll down to the bottom end and click on Add Mumbai Network <br/>


<img width="600" alt="image" height="100"  src="https://user-images.githubusercontent.com/124175970/221346184-158921ef-8a72-4197-9706-2e0fb052513b.png">

Step 10) Connect to Fuji Network :-
1. Go to https://testnet.snowtrace.io/ 
2. Scroll down to the bottom end and click on Add C-Chain ( Fuji ) Network 
<br/>

<img width="600" alt="image" height="100" src="https://user-images.githubusercontent.com/124175970/221346200-dce7c091-069d-49b3-9dae-c77b69f5f23d.png">



Step 11) Come to Remix again and compile the code ( ctrl + s )

Step 12) Select Inject Provider from Environments in Deployments section<br/>



<img width="600" alt="image" height="500"  src="https://user-images.githubusercontent.com/124175970/221346226-e0e851b9-8212-481f-9901-26793e19fa1a.png">


Step 13) Switch to Fuji Network and copy your wallet address  



<img width="600" alt="image" height="500" src="https://user-images.githubusercontent.com/124175970/222494290-26e66b6d-62e7-498b-ae3a-7b2f8395fc37.png">


Step 14) Add faucet to your account by visiting https://faucet.avax.network/  and pasting your wallet address and then click on REQUEST 2 AVAX <br/>



<img width="600" alt="image" height="500" src="https://user-images.githubusercontent.com/124175970/221346259-23639bf9-22dd-4b01-a3ed-10f738ae6873.png">



Step 15) Switch to Mumbai Network https://mumbai.polygonscan.com/ and copy your wallet address  

Step 16) Add faucet to your account by visiting https://faucet.polygon.technology/ and pasting your wallet address and then click on Submit<br/>



<img width="600" alt="image" height="300" height="300" height="300" height="300" height="300" src="https://user-images.githubusercontent.com/124175970/221346290-f0183c5a-217b-4ba3-8860-e866f6265372.png">



Step 17) Come back to Remix and switch to Fuji Network

Step 18) Deploy the contract by passing Gateway address corresponding to Fuji and feePayer as your wallet address

Step 19) Switch to Mumbai Network and deploy the contract by passing Gateway address corresponding to Mumbai and keeping the feepayer same or differeent than on Fuji

Gateway addresses for respective chains can be found here https://lcd.testnet.routerchain.dev//router-protocol/router-chain/multichain/chain_config

Step 20) Switch to Fuji Network again and call setContractOnChain  
Function of the Fuji contract passing in 80001 and address of the Mumbai contract deployed respectively<br/>


<img width="600" alt="image" height="300" height="300" height="300" height="300" height="300" src="https://github.com/router-resources/Workshop-ERC20/assets/124175970/2ff9213a-67f5-4457-89fc-296e54d838ea">



Step 21) Switch to Mumbai Network and call setContractOnChain  
Function of the Mumbai contract passing in 43113 and address of the Fuji Contract Deployed 

Step 22) Switch to Fuji Network and mint some ERC20 Tokens through mint function of the Fuji contract deployed<br/>



<img width="600" alt="image" height="300"  src="https://user-images.githubusercontent.com/124175970/221346368-d761fb5c-4596-44c8-973d-0c97e800c267.png">


Step 23) Generate request metadata by passing in the following parameters to getRequestMetadata function on Fuji Contract and calling it.

![image](https://github.com/router-resources/Workshop-ERC20/assets/124175970/059c8ee8-b230-40b4-992a-6e85a2ae4665)



Step 24) Call TransferCrossChain function of the Fuji contract deployed , passing in the amount of tokens you want to send in amount ,80001 in destChainId, Wallet Address you want to send the tokens to on Mumbai in recipient as the first three parameters .


![image](https://github.com/router-resources/Workshop-ERC20/assets/124175970/ac27c603-61b2-4755-8561-9de95b31056d)

Step 24) Go to getRequestMetadata function and copy the generated Metadata and paste it as the 4th parameter in transferCrossChain function and click on call

Step 25) Visit Router Testnet Explorer https://explorer.testnet.routerchain.dev/feePayer and switch to Router Testnet by clicking on switch 

![image](https://github.com/router-resources/Workshop-ERC20/assets/124175970/ee800320-6a7a-4b24-924c-6817a301727a)


Step 26) Search for your Fuji Contract address and click on approve

![image](https://github.com/router-resources/Workshop-ERC20/assets/124175970/d25d11d8-77fc-4858-8bbb-13d0644856f5)

![image](https://github.com/router-resources/Workshop-ERC20/assets/124175970/84278547-96c5-426a-a352-6f81f3f24194)

Step 27) Come to CrossChain section and find your transaction.

![image](https://github.com/router-resources/Workshop-ERC20/assets/124175970/973993a0-0f46-4517-8000-0cf9d7710815)

Step 28) Open your transaction and wait till all 5 checks are green in Destination Timeline

![image](https://github.com/router-resources/Workshop-ERC20/assets/124175970/5b5cd4a5-792c-4f58-a1a3-5d03ec4e4bd8)

Step 29) Call the function , totalSupply of the Mumbai contract deployed to see the ERC20 tokens transferred

Step 30) Earn your NFT Certificate . Fill the below form.

https://docs.google.com/forms/d/e/1FAIpQLSd8Xuiuw32kOqGsWmT5s7GLjLVZ_rHXw9bAJbdbr0XzrVG6RA/viewform?embedded=true
	

