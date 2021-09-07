// SPDX-License-Identifier: MIT

// Set Solidity version
pragma solidity 0.6.12;

contract PolynetDoors {

    // Set a public state variable 'message' to be "Hello World!"
    // Public variables can be accessed outside of this contract
    // string public message = "Hello World!";
      string public announcement = " \
               2021年8月11日Polynetwork DeFi 攻击暴露的漏洞价值估算，参考区块链行业上市公司 coinbase的公开薪资待遇， \
               产品经理级别 40万美元年薪，月薪 3.33万。该漏洞威胁等级 10级。 \
               根据黑客第二定律的估价公式价值为 ： 5 * 3.33 * 10 = $166.5万  \
               备注: \
                    元宇宙第二定律 ： \
                                  信息安全漏洞的市场价值 =  \
                                       5   \
                                   × 产生该安全漏洞开发人员的月平均工资 \
                                   × 漏洞的安全等级  \
                                                     \
                ===>    定律制定者 徐鹤军 \
               **********************************************  \
               August 11, 2021 Polynetwork Security Incident, the estimated value of the vulnerability exposed by this Polynetwork DeFi attack,  \
               with reference to the public salary package of coinbase, \
               a listed company in the blockchain industry, is $400,000 per year at the product manager level,   \
               or $33,300 per month. The vulnerability has a threat level of 10.  \
               According to the second law of hacking valuation formula value is: 5 * 3.33 * 10 = $1.665 million \
               Notes:  \
               The Second Law of hacker metaverse. \
                                   Market value of cybersecurity vulnerability =  \
                                    5  \
                                   × the average monthly salary of the developer who created the cybersecurity vulnerability \
                                   × the impact score of the vulnerability  \
                                                                           \
               The law was created by Xu Hejun  \
               " ;

    // Create private state variable 'owner' as an address
    // Private variables can only be accessed within this contract
    address private owner;

    // Constructor function is executed upon contract creation
    constructor() public {

        // Set address of 'owner' to be the address that deployed the contract
        owner = msg.sender;
    }

    // viewMessage() is a public function that any address can call, it returns the value of state variable 'message'
    function viewMessage() public view returns (string memory) {
        return announcement;
    }

}
