const {network,ethers,events}=require("hardhat")
const {verify}=require('../utils/verify')
module.exports=async ({getNamedAccounts,deployments})=>{
    const {deploy, log }=deployments

    const accounts= await ethers.getSigners()
    const deployer= accounts[0].address
    const networkName= network.name
    const chainId=network.config.chainId
    const Args=[]
    const Contact= await deploy("Contact",{
        from:deployer,
        log:true,
        args:Args,
        waitConfirmations:network.config.BlockConfirmations||1,


    })
    if(chainId=='11155111'){
        console.log('verifying...')
        await verify(Contact.address,Args)

    }
}