# frozen_string_literal: true

ActiveAdmin.register Client do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :email, :encrypted_password, :reset_password_token,
                :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at,
                :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :confirmation_token,
                :confirmed_at, :confirmation_sent_at, :unconfirmed_email, :company, :phone, :mobile
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :encrypted_password, :reset_password_token, ...]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
