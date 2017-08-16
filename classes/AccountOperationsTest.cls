@isTest
public class AccountOperationsTest {
    @isTest static void testAccountHasDefaultDescription() {       
        // Perform test
        Test.startTest();
        Account acc = new Account(Name='Test Account');
        Database.SaveResult result = Database.insert(acc);
        Test.stopTest();
        // Verify
        Account savedAcc = [SELECT Description FROM Account WHERE Id = :result.getId()];
        System.assertEquals('Default Description', savedAcc.Description);
    	//again, just for changes
    }
    
    @isTest 
    static void testGetBoolean(){
        Test.startTest();
        Boolean testVar = AccountOperations.isTest();
        Test.stopTest();
    	
        System.assertEquals(true, testVar);
    }
}