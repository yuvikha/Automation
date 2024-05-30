*** Settings ***
Library         OperatingSystem
Library         SeleniumLibrary                 implicit_wait=2
Resource        ../Functions/Functions.robot
Test Teardown    Close All Browsers


*** Variables ***

*** Test Cases ***
Automation
    #Login
    OpenWebBrowser
    Set Window Size                               2560    1920                         
    Wait Until Element Is Visible                 //icon[@data-test-id="nav-logo"]
    Click Element                                 //input[@autocomplete="username"] 
    Input Text                                    //input[@autocomplete="username"]                            karakaramel88@gmail.com 
    Sleep                                         2s 
    Click Element                                 //input[@autocomplete="current-password"]
    Input Text                                    //input[@autocomplete="current-password"]                    sunset88
    Sleep                                         2s
    Click Element                                 //button[contains(.,"Sign in")]
    Sleep                                         5s
    Element Should Be Visible                     //div[@class="global-nav__content"]
    Wait Until Element Is Visible                 //span[@class="display-flex align-items-center"]                timeout=30s
    Click Element                                 //span[@class="display-flex align-items-center"]
    Sleep                                         3s
    #Post
    Wait Until Element Is Visible                 //div[@class="editor-content ql-container"]                timeout=30s
    Click Element                                 //div[@data-placeholder="Apa yang ingin Anda bicarakan?"]
    Input Text                                    //div[@data-placeholder="Apa yang ingin Anda bicarakan?"]                    Halo saya Karanina
    Element Should Be Enabled                     //span[contains(.,"Posting")]
    Click Element                                 //span[contains(.,"Posting")]
    Sleep                                         3s
   
    

    

