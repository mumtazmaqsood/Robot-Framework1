*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
selectRadio&ChkBoxes
    open browser  ${url}    ${browser}
    maximize browser window
    # dealy 1sec
    set selenium speed  1
    radioBtn
    chkBox
#    close browser

selectDropDown
    dropDown
    listBox
    close browser

*** Keywords ***
radioBtn
    select radio button  sex    Female
    select radio button  exp    5

chkBox
    select checkbox  BlackTea
    select checkbox  oolongtea
    unselect checkbox  oolongtea
    select checkbox  RedTea

dropDown
    select from list by label  continents   Asia
    select from list by index  continents   1

listBox
    select from list by label  selenium_commands    Browser Commands
    select from list by index  selenium_commands    2
