*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem


*** Variables ***
${URL}  https://www.bookdepository.com/
${BROWSER}  Chrome


*** Test Cases ***
Start Automation
    Login
    Book Basket

*** Keywords ***
Login
    Open BROWSER    ${URL}  ${BROWSER}
    Maximize Browser Window
    Sleep   2
    Click Element   xpath=//body/div[2]/div[1]/div[1]/ul[2]/li[3]/a[1]
    Select Frame    xpath=//body/div[2]/div[5]/div[1]/div[1]/div[1]/div[1]/iframe[1]
    Input text  ap_email    mahirajogja@gmail.com
    Input text  ap_password     Jogja123%
    Click Element   signInSubmit


Book Basket
    Click Element   xpath=//body/div[2]/div[4]/div[1]/ul[1]/li[2]/a[1]
    Click Element   xpath=//body/div[2]/div[5]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/a[1]
    Wait until element is visible   xpath=//a[contains(text(),'Continue Shopping')]
    Sleep   3
    Click Element  xpath=//a[contains(text(),'Continue Shopping')]
    Sleep   3
    Click Element   xpath=//body/div[2]/div[5]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[3]/div[3]/div[1]/a[1]
    Wait until element is visible   xpath=//a[contains(text(),'Continue Shopping')]
    Sleep   3
    Click Element  xpath=//a[contains(text(),'Continue Shopping')]
    Sleep   3
    Click Element   xpath=//body/div[2]/div[4]/div[1]/div[1]/div[3]/a[1]/i[1]
    Execute JavaScript  window.scrollTo(0, window.scrollY+300)
    Select from list by value   xpath=//select[@id='Qty_0']    2
    Sleep   3
    Select from list by value   xpath=//select[@id='Qty_1']    3
    Sleep   3
    Execute JavaScript  window.scrollTo(0, window.scrollY+400)
    Sleep   3
    Click element   xpath=//body/div[2]/div[5]/div[1]/div[2]/div[3]/div[2]/form[2]/button[1]
    Sleep   3
    Execute JavaScript  window.scrollTo(0, window.scrollY+400)
    Sleep   3
    Close Browser

