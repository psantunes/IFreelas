# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Professionals', type: :feature, js: true do
  it 'Sign up professional' do
    visit(new_professional_registration_path)

    fill_in('professional_name', with: Faker::Name.name)
    fill_in('professional_email', with: Faker::Internet.email)
    pass = Faker::Internet.password
    fill_in('professional_password', with: pass)
    fill_in('professional_password_confirmation', with: pass)
    click_on('Cadastrar')

    content = 'Uma mensagem com um link de confirmação foi enviada para seu endereço de email. Por favor, siga o link para ativar sua conta.'
    expect(page).to have_content(content)
  end
end
