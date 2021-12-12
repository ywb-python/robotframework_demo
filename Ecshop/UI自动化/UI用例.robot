*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
打开浏览器
    Open Browser    https://www.baidu.com/    Chrome
    Comment    隐式等待
    Set Browser Implicit Wait    5
    sleep    2
    Maximize Browser Window
    sleep    2
    Set Window Position    1024    768
    sleep    2
    ${width}    ${height}    Get Window Position
    Log    ${height}
    Log    ${width}
    sleep    2
    Go Back
    sleep    2
    Go To    http://npm.taobao.org/mirrors/chromedriver/96.0.4664.45/
    Reload Page
    sleep    2
    ${title}    Get Title
    Log    ${title}
    sleep    2
    ${loc}    Get Location
    Log    ${loc}
    sleep    2
    Close Browser

元素定位
    Open Browser    https://www.baidu.com/    Chrome
    Comment    Input Text    id=kw
    Comment    Input Text    name=wd
    Comment    Input Text    identifier=wd
    Comment    Click Element    link=新闻
    Comment    Click Element    partial link=新
    Comment    Input Text    xpath=//form/span/input    三国演义
    Comment    Input Text    xpath=//input[@autocomplete="off"]    三国演义
    Comment    Input Text    xpath=//input[@autocomplete="off" and @class="s_ipt"]    三国演义
    Comment    Input Text    xpath=//input[starts-with(@autocomplete,"of")]    三国演义
    Comment    Input Text    xpath=//input[contains(@autocomplete,"of")]    三国演义
    Comment    Click Element    xpath=//a[text()="新闻"]
    Comment    Input Text    css=input[autocomplete="off"]    三国演义
    Comment    Input Text    css=input[autocomplete="off"][class="s_ipt"]    三国演义
    Comment    Input Text    css=input[autocomplete^="of"]    三国演义
    Comment    Input Text    css=input[autocomplete$="f"]    三国演义
    Comment    Input Text    css=input[autocomplete*="of"]    三国演义
    Click Element    css=div#s-top-left a:nth-child(3)
