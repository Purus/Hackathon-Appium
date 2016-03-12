Feature: Approprice Search product Functionality Validation
  As a BDD tester
  I want an automated Android mobile BDD testing framework
  So I can streamline my development process

  Scenario: TC_SP_03
    Given I am on the Main screen
    Then I enter product name and click on GO
    Then Verify The Right Product Displaying
	
  Scenario: TC_SP_01
    Given I am on the Main screen
    Then I enter dummyproduct name and click on GO
    Then verify Products are not displaying
	
  Scenario: TC_PL_03
    Given I am on the Main screen
    Then I enter binate name and click on GO
    Then click on binate product
    Then verify The Product details page displayed

  Scenario: TC_EF_04
    Given I am on the Main screen
    Then I enter product name and click on GO
    Then click on any product name which is displaying
    Then I click on email image
    Then uncheck both  Enter your email id and defuult email id radio btns
    Then click on submit
    Then verify proper validation message is displaying