*** Settings ***
Library    Selenium2Library

*** Variables ***

${URL}            https://www.google.ca
${BROWSER}        CHROME
${bSIGNIN}        xpath=//*[@id="gb_70"]


*** Test Cases ***

[TC-001]- Basic Test of Launching the browser and click sign in
    OPEN BROWSER  ${URL}  ${BROWSER}
    maximize browser window
    wait until element is visible   ${bsignin}
    click element  ${bsignin}

[TC-002] - Basic Test to read the text from an element and compare

    ${name}=    gettext  //*[@id="headingText"]
    log     ${name}
    run keyword if  '${name}'=='Sign in'    log    "PASS"

[TC-003] - Test to close browser
    close browser

*** Keywords ***

