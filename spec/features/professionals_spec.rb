# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Professionals', type: :feature, js: true do
  it 'Visit the login page' do
    visit(new_professional_session_path)
    page.save_screenshot('Test.jpg')
  end
end
