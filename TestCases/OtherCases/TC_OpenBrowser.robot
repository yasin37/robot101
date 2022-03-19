*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Browser}  chrome
${URL}  https://blazedemo.com/

*** Test Cases ***
TC_001 Browser Start and Close
    open browser    ${URL}  ${Browser}
    close browser




