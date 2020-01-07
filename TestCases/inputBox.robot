
#this program perform on inputbox
# and checks title of the page
#    visible
#    enable
#    clear


*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/




*** Test Cases ***
loginToApp
    open browser  ${url}    ${browser}
    maximize browser window
    loginMenu
    sleep  2
    close browser



*** Keywords ***
loginMenu
    title should be  nopCommerce demo store
    click link  xpath://a[@class='ico-login']
    ${"email_txt"}  set variable    id:Email
    element should be visible  ${"email_txt"}
    element should be enabled  ${"email_txt"}
    input text  ${"email_txt"}      mumtaz.maqsood@yahoo.com
    sleep   1
    clear element text  ${"email_txt"}
    sleep   1
