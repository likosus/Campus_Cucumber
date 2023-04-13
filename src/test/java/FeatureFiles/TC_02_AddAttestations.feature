Feature: Attestations functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

  Scenario:Add  Attestations
    And Click on the element in leftNav
      | humanResources |
      | setupHuman     |
      | attestations   |

    Then Click on the element in Dialogcontent
      |addButton|


    And user sending the keys in Dialogcontent
      |nameInput| violette15|

    And Click on the element in Dialogcontent
      |saveButton|

    Then Success message should be displayed

  Scenario: Negative test
        # The Attestation with Name "violette11" already exists.
    And Click on the element in leftNav
      | humanResources |
      | setupHuman     |
      | attestations   |

    Then Click on the element in Dialogcontent
      |addButton|

    When user sending the keys in Dialogcontent
      |nameInput| violette15|

    And Click on the element in Dialogcontent
      |saveButton|

    Then Already exist message should be displayed
