/**
 * Created by msimkin on 28/06/2016.
 */

public with sharing class Hello_Ctrl {

    public String hello { get { return 'Hello World!'; } }

    public Account acc {
        get { return null == acc ? (acc = [SELECT Id, Name FROM Account LIMIT 1][0]) : acc; }
        private set;
    }

    public Contact con {
        get { return null == con ? (con = [SELECT Id, FirstName FROM Contact LIMIT 1][0]) : con; }
        private set;
    }

    public Hello_Ctrl() {}

}
