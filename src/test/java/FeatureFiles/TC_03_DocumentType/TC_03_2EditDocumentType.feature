Feature:
  Background:
    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully


    And Click on the element in leftNav
      | setup |
      | parameters     |
      | documentTypes   |

  Scenario: Edit documentTypes
    When user sending the keys in Dialogcontent

      | searchInput | Aci yok rocky |

    When Click on the element in Dialogcontent

      | searchBttn |
      | editButton |


    And user sending the keys in Dialogcontent
      |nameInput| Aci var rocky|

    And Click on the element in Dialogcontent
      |saveButton|
