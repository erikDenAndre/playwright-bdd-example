Feature: Accounting Home Page

    Scenario: Check total amound
        Given I have logged on my system
        When I have landed on "http://localhost:5173/accounting"
        When I enter 1 row with account "1920" and kredit 100 and debit 0 and descripton = "uttak bank"
        When I click on the button "ny rad"
        When I enter 2 row with account "4310" and kredit 0 and debit 100 and descripton = "Batteri"
        When I click on the button "Sjekk bilag" 
        Then "Bilag OK" og totalsum = 0
        
    Scenario: Check total amount with diff
        Given I have logged on my system
        When I have landed on "http://localhost:5173/accounting"
        When I enter 1 row with account "1920" and kredit 100 and debit 0 and descripton = "uttak bank"
        When I click on the button "ny rad"
        When I enter 2 row with account "4310" and kredit 0 and debit 200 and descripton = "Batteri"
        When I click on the button "Sjekk bilag" 
        Then "Bilaget må balansere" og totalsum = 100

    Scenario: Check total amount with diff nr 2
        Given I have logged on my system
        When I have landed on "http://localhost:5173/accounting"
        When I enter 1 row with account "1930" and kredit 100 and debit 0 and descripton = "uttak bank"
        When I click on the button "ny rad"
        When I enter 2 row with account "4320" and kredit 0 and debit 250 and descripton = "Batteri"
        When I click on the button "Sjekk bilag" 
        Then "Bilaget må balansere" og totalsum = 150