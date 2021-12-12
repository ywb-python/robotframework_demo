*** Test Cases ***
调用python内置方法
    Comment    1.执行python的内置方法
    ${random_number}    Evaluate    random.randint(1,101)    modules=random
    Log    ${random_number}
    ${times}    Evaluate    time.time()    modules=time
    Log    ${times}

调用自定义的python方法
    Comment    1.执行python的自定义方法,绝对路径导入
    Import Library    D:/python_record/tool.py
    ${a}    Evaluate    int(10)
    ${b}    Evaluate    int(20)
    ${result}    add    ${a}    ${b}
    Log    ${result}
    Comment    1.执行python的自定义方法,相对路径导入
    Import Library    ${CURDIR}/utils.py
    ${a}    Evaluate    int(10)
    ${b}    Evaluate    int(20)
    ${result}    equal    ${a}    ${b}
    Log    ${result}
