*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

Create session
    Open Browser    https://www.amazon.com.tr/gp/browse.html?node=12466553031&ref_=nav_cs_fashion  chrome
Go to kotonhomepage
    Click Element    css=#sp-cc-accept
    Click Element    css=#sobe_d_b_2_4 > a > div.sl-sobe-carousel-sub-card-image
    Wait Until Element Is Visible   xpath=//div[@data-asin='B0BX4CKPW9']//span[text()='Koton']
Close session
    Close All Browsers


*** Test Cases ***
Scenario
    Create Session
    Maximize Browser Window
    Go To Kotonhomepage
    Close Session

