*** Settings ***
Library           SeleniumLibrary
Library           Collections
Resource          业务关键字.robot

*** Test Cases ***
输出打印
    Comment    1.打印
    Log    电商

设置变量
    Comment    1.设置变量
    ${var1}    Set Variable    100
    Log    ${var1}

列表用法
    Comment    1.创建列表的方式一
    ${list1}    Create List    开发    运维    前端    产品    测试
    Log    ${list1}
    Comment    2.创建列表的方式二
    @{list2}    Create List    开发    运维    前端    产品    测试
    Log Many    @{list2}

字典用法
    Comment    1.创建字典
    ${dic}    Create Dictionary    name=张三    job=律师
    Log    ${dic}
    Comment    2.获得字典的key
    ${keys}    Get Dictionary Keys    ${dic}
    Log    ${keys}
    Comment    3.获得字典的value
    ${values}    Get Dictionary Values    ${dic}
    Log    ${values}
    Comment    4.获得字典的items
    ${items}    Get Dictionary Items    ${dic}
    Log    ${items}
    Comment    5.获得字典的key获取value
    ${name}    Get From Dictionary    ${dic}    name
    Log    ${name}

时间处理
    Comment    1.获得系统时间
    ${time1}    Get Time
    Log    ${time1}
    Comment    2.睡眠时间，强制等待
    Sleep    3

流程控制
    Comment    1.if流程控制
    ${age}    Set Variable    22
    Run Keyword If    ${age}>30    Log    年龄太大
    ...    ELSE IF    18<=${age}<=30    嵌套if
    ...    ELSE    Log    未成年
    Comment    2.for循环流程控制
    FOR    ${a}    IN    apple    orange    banlana
        Log    ${a}
    END
    @{list1}    Create List    apple    orange    banlana
    FOR    ${a}    IN    @{list1}
        Log    ${a}
    END
    FOR    ${a}    IN RANGE    1    20
    Run Keyword If    ${a}==5    Exit For Loop
        Log    ${a}
    END

字符串处理
    Comment    1.字符串拼接
    ${str1}    Catenate    python    java    c#
    Log    ${str1}
