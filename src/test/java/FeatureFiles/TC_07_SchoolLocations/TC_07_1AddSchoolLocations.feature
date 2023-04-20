Feature:

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully


    And Click on the element in leftNav
      | setup       |
      | schoolSetup |
      | locations   |

  Scenario: Add Locations
    When Click on the element in Dialogcontent
      | addButton |

    And user sending the keys in Dialogcontent
      |nameInput| alper |

    And user sending the keys in Dialogcontent
      |shortName| def |

    And user sending the keys in Dialogcontent
      | capacity | 12 |

    And Click on the element in Dialogcontent
      |locationType|

    When Click ESC and return main

    When Click on the element in Dialogcontent
      | saveButton |

    Then Success message should be displayed

  Scenario: Negative test


    Then Click on the element in Dialogcontent
      | addButton |

    When user sending the keys in Dialogcontent
      | nameInput  | alper   |
      | shortName  |  def    |
      | capacity   | 12      |

    And Click on the element in Dialogcontent
      |locationType|

    When Click ESC and return main

    And Click on the element in Dialogcontent
      | saveButton |

    Then Already exist message should be displayed