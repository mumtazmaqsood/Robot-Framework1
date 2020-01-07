*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/


*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    maximize browser window
    googleSearch
    close browser

*** Keywords ***
googleSearch
    input text  name:q  ISTQB
    click button  xpath://div[@class='tfB0Bf']//input[@name='btnK']