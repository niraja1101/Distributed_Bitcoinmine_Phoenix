GROUP INFORMATION:

Number     Member names         UFID
 1        Niraja Ganpule      17451951
 2        Harshal Patil       55528581

Project Description 

We have successfully implemented the Distributed Bitcoin protocol and displayed the bitcoin transaction details on a webpage using the Phoenix framework. 
We have tested it for 100 nodes. 

The concepts implemented are:
1. Distributed Architecture for nodes
   Each node is a GenServer that contains the state in the format:
   a. Blockchain  
     Each node must have the same copy of the blockchain at all times.
     If there is any change in the blockchain made by any node, it must be advertised to all other nodes and all nodes must synchronize to this
   b. Wallet
     Each node has its own wallet with the Bitcoin address, private key and balance.

   In this design, all the nodes can participate in transactions and also mine blocks.

2. Implemented a simulation with at least 100 participants in which coins get mined and transacted.

3. Implemented a web interface using the Phoenix that allows access to the ongoing simulation using a web browser 
   The Phoenix webpage dynamically displays the following 
   a. Transactions from sender to receiver and the amount sent as and when the transaction happens
   b. Once all the transactions are mined by a node and a block is added to the blockchain, the balance of every node is calculated by traversing the            blockchain using the wallet address of node and displayed
   c. A graph of balance of each node versus the nodes id is plotted to show variation of balance between nodes after transactions are mined

4.  Mining/transacting scenarios include random selection of sender and receiver nodes.

  
Other features are :

. Bitcoin transaction
. Bitcoin wallet
. Bitcoin mining or Proof of work
. Creating the bitcoin address as done by the real Bitcoin System based on steps described here
  https://en.bitcoin.it/wiki/Technical_background_of_version_1_Bitcoin_addresses
. Creating a blockchain with a genesis block, adding a new block to the blockchain         after a node mines pending transactions,checking authenticity of     the blockchain and      maintaining synchronization between successive blocks.
. Signing transactions with private key of the wallet and verifying them with public       key at any point for security and authentication
. Finding the balance of a user wallet by the same user or any other user using only       the current blockchain as input. Here, computations are made based   on transactions  recorded in every block in the blockchain to find the balance of a particular user.



Execution Instructions

To compile and run a demonstration of the built-in functionalities in the application :
In the main folder bitcoinmine, on the commandline, run the command  : mix phx.server
Go to your favorite browser and type URL http://localhost:4000

To change number of nodes, in lib/start.ex in the main function, change the value of numnodes variable to whatever you want to set it to
To change number of transactions per block, in lib/start.ex in the handle/1 function, change the value of numtransact variable to whatever you want to set it to




