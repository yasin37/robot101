*** Settings ***

Suite Setup    NEW Before Each Test Suite
Suite Teardown    NEW After Each Test Suite

*** Variables ***

*** Keywords ***

NEW Before Each Test Suite
    log    Folder level Test Suite Starts

NEW After Each Test Suite
    log    Folder level Test Suite Ends
