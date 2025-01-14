import { Wallet, Client, xrpToDrops } from 'xrpl'

const wallet = Wallet.fromSeed("sEd7jsPN2mMg9XYk298pKvZ3m8b2LUT")

const client = new Client("wss://s.altnet.rippletest.net:51233")
await client.connect()

try {

    // Create Payment Object

    const paymentObject = {
        Account: wallet.classicAddress,
        TransactionType: "Payment",
        Amount: xrpToDrops(20),
        Destination: "rKrn6sRjg6PG6CjB3t63d1rCGjQFBoxkkX"
    }

    // Prepare the TXN

    const prepared = await client.autofill(paymentObject)

    // Sign TXN

    const signed = wallet.sign(prepared)

    // Submit TXN to xrpLedger 

    const result = await client.submitAndWait(signed.tx_blob)
    console.log(result)

} catch (error) {
    console.log(error)
} finally {
    await client.disconnect()
}