require "rails_helper"
require 'shoulda/matchers'
require 'faker'
RSpec.describe Professional do

  describe "Create a professional" do
    name = Faker::Name.name
    email = Faker::Internet.email
    password = Faker::Internet.password
    professional = Professional.new(name: name, email: email, password: password)

    it "user is valid" do
      expect(professional).to be_valid
    end
  end

  describe "Create a invalid professional" do
    name = Faker::Name.name
    email = "paulo@"
    password = Faker::Internet.password
    professional2 = Professional.new(name: name, email: email, password: password)

    it "e-mail is invalid" do
      expect(professional2).to_not be_valid
    end

    name = "WHEN//.SCOOBY"
    email = Faker::Internet.email
    professional3 = Professional.new(name: name, email: email, password: password)

    it "name is invalid" do
      expect(professional3).to_not be_valid
    end
  end

  describe "Verify model validations" do
    subject { Professional.new(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity }
  end
end
