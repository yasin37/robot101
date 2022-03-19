*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
TC_0001 Define and Display Variable
    ${Var1}=    set variable    HelloWorld
    log to console    ${Var1}