const {ethers,getNamedAccounts,deployments} =  require ("hardhat")



const main=async()=>{
const accounts= await ethers.getSigners()
const deployer=accounts[0]
const Contact_= await deployments.get("Contact")
const Contact_address= Contact_.address
let Contact= await ethers.getContractAt("Contact",Contact_address)
Contact=Contact.connect(deployer)
console.log('clearing a name and contact detail...')
const tx= await Contact.RemoveContact("jithu",8921544998)
const tx_receipt= await tx.wait(2)
console.log('---------------------------------->')
// console.log(tx_receipt)
// console.log(tx)

}

main().then(()=>{
    process.exit(0)
})
.catch((e)=>{
    console.log(e)
    process.exit(1)
})