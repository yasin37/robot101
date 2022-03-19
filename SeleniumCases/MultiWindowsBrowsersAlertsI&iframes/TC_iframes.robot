*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    http://demo.automationtesting.in/Register.html
${BASE_URL_2}    https://the-internet.herokuapp.com/nested_frames
${Browser}    chrome

*** Test Cases ***
TC_001 Handle Nested iframes
    [Documentation]    Nested iframes can be used on web pages
    ...     id, name or xpath are used to locate iframes
    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    mouse out    xpath://a[contains(text(),'SwitchTo')]
    click link    Frames
    # Nester Frames (Handle advertisement web page)
    select frame    aswift_2    # Select first iframe by using id, name or xpath
    select frame    ad_iframe     # Select the second iframe inside first iframe by using id, name or xpath
    wait until element is visible    xpath://span[contains(text(),'Close')]
    click element    xpath://span[contains(text(),'Close')]
    unselect frame      # Unselect the frame
    select frame    singleframe    # id, name or xpath
    input text    xpath://input[@type='text']    abc
    unselect frame
    click element    xpath://a[contains(text(),'Iframe with in an Iframe')]
    # Nester Frames
    select frame    xpath://iframe[@src='MultipleFrames.html']    # id, name or xpath
    select frame    xpath://iframe[@src='SingleFrame.html']      # id, name or xpath
    input text    xpath://input[@type='text']    Şampiyon Beşiktaş
    unselect frame
    # Choose one of below methods to for mouse over action
    mouse down on link    Video
    # mouse out    xpath://a[contains(text(),'Video')]
    click link    Youtube
    close browser

TC_002 Verify Test on nested iframes
    open browser    ${BASE_URL_2}    ${Browser}
    maximize browser window
    select frame    name:frame-top
    select frame    name:frame-middle
    current frame should contain    MIDDLE       #Verifies that the current frame contains text.
    current frame should not contain    RIGHT    #Verifies that the current frame does not contain text.
    ${My_CheckText}=    get text    id:content
    log to console    ${My_CheckText}
    run keyword if    '${My_CheckText}' =='MIDDLE'    log to console    Text verification is success
    run keyword if     '${My_CheckText}' !='MIDDLE'    log to console    Text verification is fail
    unselect frame
    frame should contain    name:frame-bottom    BOTTOM    #Verifies that frame identified by locator contains text.
    close browser

