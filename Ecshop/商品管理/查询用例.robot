*** Test Cases ***
查询商品
    Open Browser    https://localhost/ecshop/admin/index.php    Chrome
    Set Browser Implicit Wait    5
    Input Text    name=username    admin
    Input Text    name=password    admin123
    Click Element    xpath=//input[@value="进入管理中心"]
    sleep    2
    Select Frame    menu-frame
    Click Element    link=商品列表
    Unselect Frame
    Select Frame    main-frame
    Select From List By Value    name=brand_id    9
    Comment    Select From List By Index    name=brand_id    3
    Comment    Select From List By Label    name=brand_id    联想
    Click Element    xpath=//input[@value=" 搜索 "]

商品删除
    Open Browser    https://localhost/ecshop/admin/index.php    Chrome
    Set Browser Implicit Wait    5
    Input Text    name=username    admin
    Input Text    name=password    admin123
    Click Element    xpath=//input[@value="进入管理中心"]
    sleep    2
    Select Frame    menu-frame
    Click Element    link=商品列表
    Unselect Frame
    Select Frame    main-frame
    ${deletelist}    Get WebElements    xpath=//image[@src="images/icon_trash.gif"]
    Click Element    ${deletelist[0]}
    Handle Alert

批量删除
    Open Browser    https://localhost/ecshop/admin/index.php    Chrome
    Set Browser Implicit Wait    5
    Input Text    name=username    admin
    Input Text    name=password    admin123
    Click Element    xpath=//input[@value="进入管理中心"]
    sleep    2
    Select Frame    menu-frame
    Click Element    link=商品列表
    Unselect Frame
    Select Frame    main-frame
    ${checkboxlist}    Get WebElements    name=checkboxes[]
    FOR    ${a}    IN RANGE    0    2
        Click Element    ${checkboxlist[${a}]}
    END
    Select From List By Value    id=selAction    trash
    Handle Alert
