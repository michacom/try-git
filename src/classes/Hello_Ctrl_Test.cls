/**
 * Created by msimkin on 28/06/2016.
 */

@IsTest
private class Hello_Ctrl_Test {

    @testSetup
    static void setup() {
        insert new Account(Name = 'a');

        insert new Contact(LastName = 'b');
    }

    @isTest
    static void testBehavior() {
        Test.startTest();

        Hello_Ctrl ctrl = new Hello_Ctrl();

        String str = ctrl.hello;

        Account acc = ctrl.acc;

        Contact con = ctrl.con;

        Test.stopTest();
    }

}