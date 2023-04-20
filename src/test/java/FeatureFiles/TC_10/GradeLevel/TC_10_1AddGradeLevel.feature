Feature: GradeLevel functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup       |
      | parameters  |
      | gradeLevels |

  Scenario:Add  GradeLevel
    Then Click on the element in Dialogcontent
      | addButton |

    And user sending the keys in Dialogcontent
      | nameInput   | 10.Sinif |
      | shortName   | 10TM     |
      | orderNumber | 2        |

    When clickdown


    And Click on the element in Dialogcontent
      | saveButton |

    Then Success message should be displayed

  Scenario: Negative test

    Then Click on the element in Dialogcontent
      | addButton |

    And user sending the keys in Dialogcontent
      | nameInput   | 10.Sinif |
      | shortName   | 10TM     |
      | orderNumber | 2        |

    When clickdown


    And Click on the element in Dialogcontent
      | saveButton |


    Then Already exist message should be displayed
