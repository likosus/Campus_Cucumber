Feature:

  Background:
    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully


    And Click on the element in leftNav
      | setup      |
      | parameters |
      | fields     |

  Scenario: Add fields

    When Click on the element in Dialogcontent

      | addButton |

    When user sending the keys in Dialogcontent
      | nameInput       | panter |
      | integrationCode | pnt01  |

    When Click on the element in Dialogcontent

      | codeFields   |
      | integerClick |

    When Click on the element in Dialogcontent
      | saveButton |

    Then Success message should be displayed

  Scenario: Negative test

    When Click on the element in Dialogcontent

      | addButton |

    When user sending the keys in Dialogcontent
      | nameInput       | panter |
      | integrationCode | pnt01  |

    When Click on the element in Dialogcontent

      | codeFields   |
      | integerClick |

    When Click on the element in Dialogcontent
      | saveButton |

    Then Already exist message should be displayed




