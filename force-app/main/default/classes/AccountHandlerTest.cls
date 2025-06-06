@isTest
private class AccountHandlerTest {
    @isTest static void testCreateAccount() {
        Test.startTest();
        AccountHandler.createAccount('Test Account');
        Test.stopTest();

        Account[] accs = [SELECT Id FROM Account WHERE Name = 'Test Account'];
        System.assertEquals(1, accs.size(), 'Account should be inserted');
    }
}