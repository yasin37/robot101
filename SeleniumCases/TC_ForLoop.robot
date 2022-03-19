*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***
TC_0001 FOR LOOP "IN RANGE"

    #@{MyList}    create list    Hello    37    55.81    World    XYZ123

    FOR    ${i}    IN RANGE    3    10    # Both 3 AND 10 are ignored
      log to console    ${i}
    END

TC_0002 FOR "LOOP IN"
    @{My_List}    create list    Hello    37    41.29    World    ABC123
    FOR    ${i}    IN    @{My_List}
      log to console  ${i}
     END

TC_0003 Simple for loop

    FOR    ${animal}    IN    cat    dog
        log    ${animal}
        log    2nd keyword
    END
    log    Outside loop