# frozen_string_literal: true

When('eu cadastro meu usuário') do
  user.load
  user.preencher_usuario
end

Then('eu verifico se o usuário foi cadastrado') do
  @texto = find('#notice').text
  expect(@texto).to eql 'Usuário Criado com sucesso'
end
