import { Client } from 'xrpl'

const displayLastLedgerIndex = async () => {
    const client = new Client('wss://s1.ripple.com')

    await client.connect()

    const ledgerInfo = await client.request({
        command: 'ledger',
        ledger_index: 'validated'
    })

    console.log(`Hey from xrpL Server, last index is: ${ledgerInfo.result.ledger_index}`)

    await client.disconnect()
}

displayLastLedgerIndex()