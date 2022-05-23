*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem


*** Variables ***
${URL}  https://www.bookdepository.com/
${BROWSER}  Chrome

*** Test Cases ***
Start Automation
    Login
    WishList Book

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

WishList Book
    Execute JavaScript  window.scrollTo(0, window.scrollY+300)
    Wait until element is visible   xpath=//a[contains(text(),"It Ends With Us: The most heartbreaking novel you'")]
    Click Element   xpath=//a[contains(text(),"It Ends With Us: The most heartbreaking novel you'")]
    Wait until element is visible   xpath=//a[contains(text(),'Add to wishlist')]
    Click Element  xpath=//a[contains(text(),'Add to wishlist')]
    Wait until element is visible   xpath=/html/body/div[11]/div/div/div[2]/div/div/div[1]/form/div[1]/input
    Sleep   3
    Input text  xpath=/html/body/div[11]/div/div/div[2]/div/div/div[1]/form/div[1]/input  Bulan depan beli
    Sleep   3
    Click Element   xpath=//body/div[11]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/button[1]
    Wait until element is visible   xpath=/html/body/div[11]/div/div/div[2]/div/a
    Click Element   xpath=/html/body/div[11]/div/div/div[2]/div/a
    Sleep   3
    Close Browser
