*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
TC_001 Fetch Data 3
    open browser    ${URL}    ${Browser}
    maximize browser window
    # dropdown
    select from list by label    id:continents  South America    # label means visble text
    sleep    2
    select from list by index    id:continents    6
    # list
    select from list by label    id:selenium_commands    Navigation Commands   Switch Commands    Wait Commands
    sleep    2
    unselect from list by label    id:selenium_commands    Navigation Commands   Switch Commands
    sleep    2
    close browser
