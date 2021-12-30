# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_211_212_194_856) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'active_admin_comments', force: :cascade do |t|
    t.string 'namespace'
    t.text 'body'
    t.string 'resource_type'
    t.bigint 'resource_id'
    t.string 'author_type'
    t.bigint 'author_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[author_type author_id], name: 'index_active_admin_comments_on_author'
    t.index ['namespace'], name: 'index_active_admin_comments_on_namespace'
    t.index %w[resource_type resource_id], name: 'index_active_admin_comments_on_resource'
  end

  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.bigint 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness',
                                                    unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.string 'service_name', null: false
    t.bigint 'byte_size', null: false
    t.string 'checksum', null: false
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'active_storage_variant_records', force: :cascade do |t|
    t.bigint 'blob_id', null: false
    t.string 'variation_digest', null: false
    t.index %w[blob_id variation_digest], name: 'index_active_storage_variant_records_uniqueness', unique: true
  end

  create_table 'admins', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['confirmation_token'], name: 'index_admins_on_confirmation_token', unique: true
    t.index ['email'], name: 'index_admins_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_admins_on_reset_password_token', unique: true
  end

  create_table 'campi', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'clients', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string 'unconfirmed_email'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'company'
    t.string 'phone'
    t.index ['email'], name: 'index_clients_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_clients_on_reset_password_token', unique: true
  end

  create_table 'courses', force: :cascade do |t|
    t.string 'name'
    t.bigint 'campus_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['campus_id'], name: 'index_courses_on_campus_id'
  end

  create_table 'experiences', force: :cascade do |t|
    t.bigint 'professional_id'
    t.string 'title'
    t.text 'description'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['professional_id'], name: 'index_experiences_on_professional_id'
  end

  create_table 'languages', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'languages_professionals', id: false, force: :cascade do |t|
    t.bigint 'professional_id'
    t.bigint 'language_id'
    t.integer 'level'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['language_id'], name: 'index_languages_professionals_on_language_id'
    t.index ['professional_id'], name: 'index_languages_professionals_on_professional_id'
  end

  create_table 'professionals', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string 'unconfirmed_email'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.text 'description'
    t.string 'avatar'
    t.string 'mobile'
    t.boolean 'whatsapp'
    t.string 'linkedin'
    t.string 'github'
    t.string 'website'
    t.date 'birth_date'
    t.integer 'work_shift'
    t.integer 'type_of_work'
    t.bigint 'course_id'
    t.integer 'semester'
    t.index ['course_id'], name: 'index_professionals_on_course_id'
    t.index ['email'], name: 'index_professionals_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_professionals_on_reset_password_token', unique: true
  end

  create_table 'professionals_regions', id: false, force: :cascade do |t|
    t.bigint 'professional_id'
    t.bigint 'region_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['professional_id'], name: 'index_professionals_regions_on_professional_id'
    t.index ['region_id'], name: 'index_professionals_regions_on_region_id'
  end

  create_table 'professionals_skills', id: false, force: :cascade do |t|
    t.bigint 'professional_id'
    t.bigint 'skill_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['professional_id'], name: 'index_professionals_skills_on_professional_id'
    t.index ['skill_id'], name: 'index_professionals_skills_on_skill_id'
  end

  create_table 'regions', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'skills', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'active_storage_variant_records', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'professionals', 'courses'
end
