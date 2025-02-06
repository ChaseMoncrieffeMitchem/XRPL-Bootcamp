import { defineFeature, loadFeature } from "jest-cucumber";
import path from 'path'

const feature = loadFeature(path.join(__dirname, './walletImporting.feature'))

defineFeature(feature, (test) => {
    test('Successful Wallet Importing', ({ given, when, then, and }) => {
        given('I attempting to use the RPS application,', () => {

        });

        when('I connect my wallet to the application,', () => {

        });

        then('I should see a success message,', () => {

        });

        and('I should be able to see my account balance', () => {

        });
    });
})