public class jquery_table{

    public jquery_table() {} // Empty Constructor

    //Non-Static method to return accounts for standard apex:pageblocktable
    public List<Account> getAccounts(){
      return datatable_demo();
    }

    @RemoteAction //Remote Action to expose method to JavaScript Remoting
    public static List<Account> datatable_demo(){
       //Query Accounts Table
       return [select id, name, accountnumber, SLAExpirationDate__c
               from Account order by name limit 20];
    }
}