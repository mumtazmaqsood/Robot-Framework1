#1-sleep
#2-set selenium speed 2 seconds , this command will delay 2 secs for whole program
# 3-timeout
# set selenium timeout 5 seconds
#wait until page contains login
#4- set selenium implicit wait  10 seconds


*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register


*** Test Cases ***
checkSpeed
    open browser  ${url}    ${browser}
    personalDetails
    close browser


*** Keywords ***
personalDetails
    select radio button  Gender     M
    input text  id:FirstName    mumtaz
    input text  id:LastName     maqsood
    input text  id:Email        mumtaz.maqsood@yahoo.com
    input password  id:Password     vici2FHh
    input password  id:ConfirmPassword      vici2FHh
    click button  id:register-button
