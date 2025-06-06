public class AccountHandler {
    public static void createAccount(String name) {
        if (String.isBlank(name)) {
            System.debug('Account name cannot be blank.');
            return;
        }

        Account acc = new Account(Name = name);
        insert acc;
    }
}