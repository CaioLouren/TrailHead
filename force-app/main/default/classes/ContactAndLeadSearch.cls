public with sharing class ContactAndLeadSearch {
   public static List<List<SObject>> searchContactsAndLeads(String name) {

    List<List<SObject>> contactAndLeads = [FIND :name IN ALL FIELDS RETURNING Contact(Name, LastName),Lead(Name, LastName)];

    Contact[] cont = (Contact[])contactAndLeads[0];
    Lead[] led = (Lead[])contactAndLeads[1];

    return contactAndLeads;

   }
}
