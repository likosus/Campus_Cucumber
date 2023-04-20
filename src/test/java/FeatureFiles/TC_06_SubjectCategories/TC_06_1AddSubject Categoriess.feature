Feature: Subject Category

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | education         |
      | educationSetup    |
      | subjectCategories |

  Scenario:Add  subjectCategories
    Then Click on the element in Dialogcontent
      | addButton |


    And user sending the keys in Dialogcontent
      | nameInput       | Fatih42 |
      | integrationCode | tesla   |

    And Click on the element in Dialogcontent
      | saveButton |

    Then Success message should be displayed

  Scenario: Negative test


    Then Click on the element in Dialogcontent
      | addButton |

    When user sending the keys in Dialogcontent
      | nameInput       | Fatih42 |
      | integrationCode | tesla   |


    And Click on the element in Dialogcontent
      | saveButton |

    Then Already exist message should be displayed