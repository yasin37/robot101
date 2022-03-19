*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://demo.automationtesting.in/Windows.html
${Browser}    chrome

*** Test Cases ***
TC_001 Open New Tabbed Windows
    open browser    ${URL}    ${Browser}
    maximize browser window
    #scroll element into view    xpath://a[contains(text(),'RPA framework')]
    click button    xpath://a[@href='http://www.selenium.dev']/button
    switch window    new
    wait until element is enabled    xpath://*[contains(text(),'Documentation')]
    click element    xpath://*[contains(text(),'Documentation')]

    close window
    switch window    main
    click element    xpath://*[contains(text(),'Open New Seperate Windows')]
    click button    xpath://*[contains(text(),'click the button to open a new window with some specifications')]/following-sibling::button
    switch window    new
    wait until element is enabled    xpath://*[contains(text(),'English')]
    click element    xpath://*[contains(text(),'English')]

    close window
    switch window    main
    click element    xpath://a[@href='#Multiple']
    click element    xpath://*[contains(text(),'Click the button to open multiple windows ')]/following-sibling::button
    switch window    new
    input text    id:email    yasinyazkan37@gmail.com
    click element    id:enterimg

    close window
    close all browsers
