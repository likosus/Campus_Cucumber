Feature:

  Background:
    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully


    And Click on the element in leftNav
      | setup       |
      | parameters  |
      | gradeLevels |

  Scenario:

    When Click on the element in Dialogcontent

      | likosEdit |

    And user sending the keys in Dialogcontent
      | nameInput   | 15.Sinif |
      | shortName   | 15TM     |
      | orderNumber | 5        |

    When clickdown

    And Click on the element in Dialogcontent
      | saveButton |
