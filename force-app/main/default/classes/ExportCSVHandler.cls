public inherited sharing class ExportCSVHandler {
    
    @AuraEnabled(cacheable = true)
    public static List<Account> getAccounts(){
        return [SELECT Id, Name,Industry, Type, Phone, Rating FROM Account ORDER BY Name LIMIT 10];
    }
}