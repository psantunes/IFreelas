# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Clients', type: :feature, js: true do
  it 'Sign up client' do
    visit(new_client_registration_path)

    fill_in('client_name', with: Faker::Name.name)
    fill_in('client_email', with: Faker::Internet.email)
    pass = Faker::Internet.password
    fill_in('client_password', with: pass)
    fill_in('client_password_confirmation', with: pass)
    click_on('Cadastrar')

    content = 'Uma mensagem com um link de confirmação foi enviada para seu endereço de email. Por favor, siga o link para ativar sua conta.'
    expect(page).to have_content(content)
  end
end
