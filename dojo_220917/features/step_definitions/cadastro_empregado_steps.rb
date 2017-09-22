#utf-8

Dado(/^que eu esteja na tela de login do site ORANGEHRM$/) do
    visit("http://opensource.demo.orangehrmlive.com/index.php/auth/login")
end
  
Quando(/^realizo o login$/) do
    fill_in('txtUsername', :with => 'admin')
    fill_in('txtPassword', :with => 'admin')
    find(:xpath, '//*[@id="btnLogin"]').click
end

Quando(/^clico no menu pim$/) do
    find(:xpath,'//*[@id="menu_pim_viewPimModule"]/b').click
end
  
Quando(/^clico no submenu add employee$/) do
    find(:xpath,'//*[@id="menu_pim_addEmployee"]').click
end
  
Quando(/^preencho os campos obrigatórios$/) do
    fill_in('firstName', :with => 'Eduardo')
    fill_in('lastName', :with => 'Silva')
    fill_in('employeeId', :with => '1112')
    check('chkLogin')
    fill_in('user_name', :with => 'edu_alencar5')
    fill_in('user_password', :with => 'secret')
    fill_in('re_password', :with => 'secret')
    select('Enable', :from => 'status')
end
  
Quando(/^clico no botão save$/) do
    click_button('btnSave')
end

Então(/^empregado cadastrado com sucesso$/) do
    assert_text('Eduardo Silva')
end
  
