Feature: Attestations functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup       |
      | schoolSetup |
      | departments |

  Scenario: Edit schoolSetup
    And Click on the element in Dialogcontent
      | kadirEdit |

    And user sending the keys in Dialogcontent
      | nameInput | graphic |
      | codeInput | 5555    |

    And Click on the element in Dialogcontent
      | saveButton |
