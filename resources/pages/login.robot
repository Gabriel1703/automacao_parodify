***Settings***
Documentation           Ações da página de login

***Keywords***

Open Login Page

    New Browser         ${browser}     ${false}
    New Page            http://parodify.herokuapp.com/users/sign_in 

Login With
    [Arguments]         ${email_arg}    ${pass_arg}    
    
    Fill Text           css=input[name*=email]  ${email_arg}
    Fill Text           css=#user_password      ${pass_arg}

    Click               css=input[value="Log in"]  

Alert Should Be         
    [Arguments]         ${expect_arg}

    Get Text            .is-danger .message-body    ==    ${expect_arg}