# Given => step ก่อนที่จะทำ
# When => สิ่งที่ต้องการ test
# Then => Result

*** Settings ***
#Import library
# Resource ../../resources/import.robot
Library    SeleniumLibrary

# All Testcase
Test Setup    Open facebook Keyword
Test Teardown    Close Browser Keyword

#First Testcase
Suite Setup    Open facebook Keyword

#Last Testcase
Suite Teardown    Close Browser Keyword

*** Keywords ***
Open facebook Keyword
    Open Browser    https://www.facebook.com/    chrome

Close Browser Keyword
    Close Browser

Verify Login Successfully 
    Wait until page contains element    //*//span[contains(text(),'ฟีดข่าว')]    10s 

Verify Login Fail 
    Wait until page contains element    //a[@href="/r.php"]    10s

Login facebook
    [Arguments]    ${email}    ${password}
    Input text    id=email    ${email}
    Input password    id=pass    ${password}
    Click element    id=loginbutton

*** Variables ***
${email1}    st.sanyanee
${password1}    123456
${email2}   qwwerty
${password2}    5678

*** Test Cases ***

#แยก step
TC001 Success Login facebook with valid username and password
    [Documentation]    To verify user can login facebook success fully
    Open Browser    https://www.facebook.com/    chrome
    Input text    id=email    st.sanyanee
    Input password    id=pass    123456
    Click element    id=loginbutton
    [Teardown]    Close Browser

#กำหนด keyword ใช้รวมกับ Test003
TC002 Success Login facebook with valid username and password
    [Documentation]    To verify user can login facebook success fully
    Open Browser    https://www.facebook.com/    chrome
    Login facebook    ${email1}    ${password1}
    Click element    id=loginbutton
    [Teardown]    Close Browser

TC003 Success Login facebook with valid username and password
    [Documentation]    To verify user can login facebook success fully
    Open Browser    https://www.facebook.com/    chrome
    Login facebook    ${email2}    ${password2}
    Click element    id=loginbutton
    [Teardown]    Close Browser

# ใช้ All Testcase
TC004 Success Login facebook with valid username and password
    [Documentation]    To verify user can login facebook success fully
    Login facebook    ${email1}    ${password1}

# ใส่ Gherkin syntax
TC005 Success Login facebook with valid username and password
    [Documentation]    To verify user can login facebook success fully
    Given Open Browser    https://www.facebook.com/    chrome
    And Input text    id=email    st.sanyanee
    And Input password    id=pass    123456
    When Click element    id=loginbutton
    [Teardown]    Close Browser

# Then
TC006 Success Login facebook with valid username and password
    [Documentation]    To verify user can login facebook success fully
    Given Open Browser    https://www.facebook.com/    chrome
    And Input text    id=email    st.sanyanee
    And Input password    id=pass    123456
    When Click element    id=loginbutton
    Then Verify Login Successfully
    [Teardown]    Close Browser
