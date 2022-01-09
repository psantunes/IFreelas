# frozen_string_literal: true

require 'rails_helper'
require 'shoulda/matchers'
require 'faker'
RSpec.describe Client do
  describe 'Create a client' do
    name = Faker::Name.name
    email = Faker::Internet.email
    password = Faker::Internet.password
    client = Client.new(name: name, email: email, password: password)

    it 'user is valid' do
      expect(client).to be_valid
    end
  end

  describe 'Create a invalid client' do
    name = Faker::Name.name
    email = 'paulo@'
    password = Faker::Internet.password
    client2 = Client.new(name: name, email: email, password: password)

    it 'e-mail is invalid' do
      expect(client2).not_to be_valid
    end

    name = '@$%AAAAAAAA'
    email = Faker::Internet.email
    password = Faker::Internet.password
    client3 = Client.new(name: name, email: email, password: password)

    it 'name is invalid' do
      expect(client3).not_to be_valid
    end
  end

  describe 'Verify model validations' do
    subject {
      Professional.new(name: Faker::Name.name,
                       email: Faker::Internet.email,
                       password: Faker::Internet.password)
    }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity }
  end
end
