public with sharing class LeaveRequestController {
    @AuraEnabled(cacheable=true)
    public static List<LeaveRequest__c> getMyLeaves()
    {
        List<LeaveRequest__c> myLeaves;

        try {
            myLeaves=[SELECT Id,Name,From_Date__c,To_Date__c,Reason__c,Status__c,Manager_Comment__c  FROM LeaveRequest__c];
        }
        catch (System.Exception e)
        {
            {
                throw new AuraHandledException(e.getMessage());
            }
        }
            return myLeaves;
         
    }

   
}