public with sharing class ContactSearch {
    public static List<Contact> searchForContacts(String sobrenome, String cep) {
        List<Contact> listContact = [SELECT Id, Name FROM Contact WHERE LastName =:sobrenome AND MailingPostalCode =:cep];

        return listContact;
    }
}
