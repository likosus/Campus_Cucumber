Feature:
Background:
Given Navigate to Campus
When Login username and Password and click login button
Then User should login successfully


  And Click on the element in leftNav
    | setup |
    | parameters     |
    | documentTypes   |

Scenario: Add documentTypes
    When Click on the element in Dialogcontent

      | addButton |

    When user sending the keys in Dialogcontent
      | nameInput | Aci yok rocky |

    When Click on the element in Dialogcontent

      | DTstage |
      | DTsecondstage |

     When Click ESC and return main


     When Click on the element in Dialogcontent
      | saveButton |




