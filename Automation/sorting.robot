*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem


*** Variables ***
${URL}  https://www.bookdepository.com/
${BROWSER}  Chrome

*** Test Cases ***
Start Automation
    Sorting High Price

*** Keywords ***
Sorting High Price
    Open BROWSER    ${URL}  ${BROWSER}
    Maximize Browser Window
    Sleep   2
    Mouse down  xpath=//body/div[2]/div[4]/div[1]/ul[1]/li[1]/a[1]
    Click Element    xpath=//body/div[2]/div[4]/div[1]/ul[1]/li[1]/ul[1]/li[1]/ul[2]/ul[1]/li[21]/a[1]
    Click Element   xpath=//body/div[2]/div[5]/div[1]/div[1]/div[1]/ul[1]/li[4]/a[1]
    Sleep   3
    Select from list by value   searchSortBy    price_high_low
    Sleep   3
    Execute JavaScript  window.scrollTo(0, window.scrollY+300)
    Sleep   3
    Close Browser