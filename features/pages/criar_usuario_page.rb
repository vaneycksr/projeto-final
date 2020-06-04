# frozen_string_literal: true

class User < SitePrism::Page
  set_url 'users/new'

  element :nome, '#user_name'
  element :ultimo_nome, '#user_lastname'
  element :email, '#user_email'
  element :endereco, '#user_address'
  element :universidade, '#user_university'
  element :profissao, '#user_profile'
  element :genero, '#user_gender'
  element :idade, '#user_age'

  element :criar, 'input[value="Criar"]'

  def preencher_usuario
    nome.set 'Van Eyck'
    ultimo_nome.set 'Rosas'
    email.set 'van@van.com'
    endereco.set 'Av. Washington luiz'
    universidade.set 'UFPB'
    profissao.set 'Analista de Teste'
    genero.set 'Masculino'
    idade.set '27'
    criar.click
  end
end
