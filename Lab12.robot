*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}         https://www.google.co.th
${BROWSER}        Chrome
${DELAY}          0
${TEST URL}      cs.kku.ac.th 

*** Test Cases ***	
Test Cases 1
    Open Browser    ${SERVER}    ${BROWSER}
	Input Text    q    ${TEST URL}
	Submit Form
	Wait Until Page Contains    CS KKU
	Close Browser