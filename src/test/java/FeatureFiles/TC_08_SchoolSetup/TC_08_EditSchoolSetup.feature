Feature: Attestations functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup       |
      | schoolSetup |
      | departments |

  Scenario: Edit Attestations

    And Click on the element in Dialogcontent
      | editButton2 |

    And user sending the keys in Dialogcontent
      | nameInput | kadirD |
      | codeInput | 5561   |

    And Click on the element in Dialogcontent
      | saveButton |
