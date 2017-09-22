Quando(/^busco o empregado desejado acessando os Menus PIM\/Employee List$/) do
    find(:xpath,'//*[@id="menu_pim_viewPimModule"]/b').click
    find(:xpath,'//*[@id="menu_pim_viewEmployeeList"]').click
    fill_in('empsearch[id]', :with => '1113')
    click_button('searchBtn')
    click_link('1113')
end

Quando(/^clico no botão Edit$/) do
    click_button('btnSave')
end

Quando(/^edito os campos permitidos que desejo$/) do
    fill_in('personal[txtEmpMiddleName]', :with => 'Alencar')
    fill_in('personal[txtLicenNo]', :with => '999999999')
    choose('personal_optGender_1')
    select('Brazilian', :from => 'personal[cmbNation]')
    select('Married', :from => 'personal[cmbMarital]')
    fill_in('personal[DOB]', :with=> '1988-09-03')
end

Quando(/^clico no botão Save$/) do
    click_button('btnSave')
end

Então(/^deve ser exibida uma mensagem informando que foi salva com sucesso$/) do
    assert_text('Successfully Saved')  
end