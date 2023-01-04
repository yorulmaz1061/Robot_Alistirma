*** Settings ***
Resource        ../Keywords/LoginTest.robot

*** Variables ***

${URL}=     https://stage-portal.odeal.com/auth/login
${BROWSER}=     chrome
${TC_KIMLIK}=       59989912131
${SIFRE}=       135246
${inputbox_kimlik}=     css=input[id='odeal-form__item-:r0:']
