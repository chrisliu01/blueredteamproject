pragma solidity ^0.5.16; 

contract Blocklist {
  
  mapping (string => uint256) private timestamp; 
  string public ipList; string[] public ipArray; 
  uint256 count = 0; 
  constructor() public {
  }
  function updateIpList(string memory ipAddress,uint256 currenttime) public { 
     ipList = ipAddress; 
     if(timestamp[ipAddress]==0) { 
        count++; 
        ipArray.push(ipAddress);
     }
     timestamp[ipList] = currenttime;
  }
  function getIpList(uint256 num) view public returns (string memory,uint256) 
  { 
     return (ipArray[num],timestamp[ipArray[num]]);
  }
  
  function getListLength() view public returns (uint256) 
 { 
    return (count);
  }
}
