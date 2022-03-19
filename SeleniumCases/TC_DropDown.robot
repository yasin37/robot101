*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    chrome
${URL}    https://thetestingworld.com/testings/

*** Test Cases ***
TC_0001 DropDown and List
        [Documentation]    One element is chosen on Dropdown but multiple elements can be chosen on list
        open browser    ${URL}    ${BROWSER}
        maximize browser window
        #set selenium speed    1 second
        #select from list by index    name:sex    1
        #select from list by value    name:sex    2
        select from list by label    name:sex    Male

        select from list by index    name:country    223
        close browser