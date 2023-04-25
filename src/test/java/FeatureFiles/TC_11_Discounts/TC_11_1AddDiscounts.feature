Feature: TC_11_ADD

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup      |
      | parameters |
      | discounts  |

  Scenario:Add  Discounts

    Then Click on the element in Dialogcontent
      | addButton |

    And user sending the keys in Dialogcontent
      | description     | deva1 |
      | integrationCode | 11111 |
      | priority        | 11111 |


    When Click TAP and return main


    And Click on the element in Dialogcontent
      | saveButton |


    Then Success message should be displayed


  Scenario: Negative test


    Then Click on the element in Dialogcontent
      | addButton |

    When user sending the keys in Dialogcontent
      | description     | deva1 |
      | integrationCode | 11111 |
      | priority        | 11111 |

    When Click TAP and return main

    And Click on the element in Dialogcontent
      | saveButton |

    Then Already exist message should be displayed