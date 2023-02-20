*** Settings ***
Library  SeleniumLibrary 
*** Test Cases ***
Login
   open browser   http://amazon.in  chrome
   click element  id= twotabsearchtextbox
   sleep  2 
   close browser
      