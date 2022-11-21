*** Variables ***
# Configuration data
${url}  https://www.saucedemo.com/
${browser}  chrome

# Locators
${txtbox_username}  id:user-name
${txtbox_password}  id:password
${btn_login}  xpath://*[@id="login_button_container"]/div/form/input[3]
${txt_error}  xpath://*[@id="login_button_container"]//h3

# Input data
${valid_username}  standard_user
${invalid_username}  standard_us
${valid_password}  secret_sauce
${invalid_password}  secret_sa
${lockedout_user}  locked_out_user
${error_wrong_user_or_pw}  Epic sadface: Username and password do not match any user in this service
${error_locked_user}  Epic sadface: Sorry, this user has been locked out.