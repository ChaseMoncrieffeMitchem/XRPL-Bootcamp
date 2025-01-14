import { Client, Wallet } from 'xrpl'

const wallet = Wallet.fromSeed("sEdViwF1n3dEMXfdU1EUX1Aj2yuHBTH")

const client = new Client("wss://s.altnet.rippletest.net:51233")
await client.connect()

try {
    // Create Delete TXN Object
    const deleteObject = {
        Account: wallet.classicAddress,
        TransactionType: "AccountDelete",
        Destination: "rLSaJRj1H6MhoFR73v7sdJ4w6eCJ9ghEca"
    }

    // Prepare TXN 
    const prepared = await client.autofill(deleteObject)

    // Sign TXN 
    const sign = wallet.sign(prepared)

    // Submit TXN
    const result = await client.submitAndWait(sign.tx_blob)
    console.log(result)
} catch (error) {
    console.log(error)
} finally {
    await client.disconnect()
}