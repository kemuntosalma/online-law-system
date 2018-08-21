# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_12_142713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "chapviiis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapviis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapvis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapvixes", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapvxes", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapvxiiis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapvxiis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapvxis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxes", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxiiis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxiis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxivs", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxixes", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxliis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxlis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxls", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxviiis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxviis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxvis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxvs", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxes", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxiiis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxiis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxivs", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxixes", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxviiis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxviis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxvis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxvs", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxxes", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxxiiis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxxiis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxxis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxxivs", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxxixes", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxxviiis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxxviis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxxvis", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapxxxvs", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "d1s", force: :cascade do |t|
    t.integer "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "d2s", force: :cascade do |t|
    t.integer "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "d3s", force: :cascade do |t|
    t.integer "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "d4s", force: :cascade do |t|
    t.integer "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "d5s", force: :cascade do |t|
    t.integer "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "d6s", force: :cascade do |t|
    t.integer "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "d7s", force: :cascade do |t|
    t.integer "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "d8s", force: :cascade do |t|
    t.integer "section_number"
    t.text "crime"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "di1s", force: :cascade do |t|
    t.text "s"
    t.text "c"
    t.text "l"
    t.text "sa"
    t.text "ca"
    t.text "la"
    t.text "sb"
    t.text "cb"
    t.text "lb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "di2s", force: :cascade do |t|
    t.text "s"
    t.text "c"
    t.text "l"
    t.text "sa"
    t.text "ca"
    t.text "la"
    t.text "sb"
    t.text "cb"
    t.text "lb"
    t.text "sc"
    t.text "cc"
    t.text "lc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "di3s", force: :cascade do |t|
    t.text "s"
    t.text "c"
    t.text "l"
    t.text "sa"
    t.text "ca"
    t.text "la"
    t.text "sb"
    t.text "cb"
    t.text "lb"
    t.text "sc"
    t.text "cc"
    t.text "lc"
    t.text "sd"
    t.text "cd"
    t.text "ld"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "di4s", force: :cascade do |t|
    t.text "s"
    t.text "c"
    t.text "l"
    t.text "sa"
    t.text "ca"
    t.text "la"
    t.text "sb"
    t.text "cb"
    t.text "lb"
    t.text "sc"
    t.text "cc"
    t.text "lc"
    t.text "sd"
    t.text "cd"
    t.text "ld"
    t.text "sf"
    t.text "cf"
    t.text "lf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "di5s", force: :cascade do |t|
    t.text "s"
    t.text "c"
    t.text "l"
    t.text "sa"
    t.text "ca"
    t.text "la"
    t.text "sb"
    t.text "cb"
    t.text "lb"
    t.text "sc"
    t.text "cc"
    t.text "lc"
    t.text "sd"
    t.text "cd"
    t.text "ld"
    t.text "sf"
    t.text "cf"
    t.text "lf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "di6s", force: :cascade do |t|
    t.text "s"
    t.text "c"
    t.text "l"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "di7s", force: :cascade do |t|
    t.text "s"
    t.text "c"
    t.text "l"
    t.text "sa"
    t.text "ca"
    t.text "la"
    t.text "sb"
    t.text "cb"
    t.text "lb"
    t.text "sc"
    t.text "cc"
    t.text "lc"
    t.text "sd"
    t.text "cd"
    t.text "ld"
    t.text "sf"
    t.text "cf"
    t.text "lf"
    t.text "sg"
    t.text "cg"
    t.text "lg"
    t.text "sh"
    t.text "ch"
    t.text "lh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "di8s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "div1s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "div2s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.text "section_numbr"
    t.text "crme"
    t.text "lws"
    t.text "secton_number"
    t.text "crim"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divi1s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.text "section_numbr"
    t.text "crme"
    t.text "lws"
    t.text "secton_number"
    t.text "crim"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divi2s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.text "section_numbr"
    t.text "crme"
    t.text "lws"
    t.text "secton_number"
    t.text "crim"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divis1s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.text "section_numbr"
    t.text "crme"
    t.text "lws"
    t.text "secton_number"
    t.text "crim"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divis2s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.text "section_numbr"
    t.text "crme"
    t.text "lws"
    t.text "secton_number"
    t.text "crim"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divisi1s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.text "section_numbr"
    t.text "crme"
    t.text "lws"
    t.text "secton_number"
    t.text "crim"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divisi2s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.text "section_numbr"
    t.text "crme"
    t.text "lws"
    t.text "secton_number"
    t.text "crim"
    t.text "law"
    t.text "sctn_number"
    t.text "cr"
    t.text "lw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divisi3s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.text "section_numbr"
    t.text "crme"
    t.text "lws"
    t.text "secton_number"
    t.text "crim"
    t.text "law"
    t.text "sctn_number"
    t.text "cr"
    t.text "lw"
    t.text "sec_number"
    t.text "cri"
    t.text "la"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divisi4s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.text "section_numbr"
    t.text "crme"
    t.text "lws"
    t.text "secton_number"
    t.text "crim"
    t.text "law"
    t.text "sctn_number"
    t.text "cr"
    t.text "lw"
    t.text "sec_number"
    t.text "cri"
    t.text "la"
    t.text "st"
    t.text "ci"
    t.text "l"
    t.text "sn"
    t.text "cm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divisi5s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.text "section_numbr"
    t.text "crme"
    t.text "lws"
    t.text "secton_number"
    t.text "crim"
    t.text "law"
    t.text "sctn_number"
    t.text "cr"
    t.text "lw"
    t.text "sec_number"
    t.text "cri"
    t.text "la"
    t.text "st"
    t.text "ci"
    t.text "l"
    t.text "sn"
    t.text "cm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divisi6s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divisi7s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.text "section_numbr"
    t.text "crme"
    t.text "lws"
    t.text "secton_number"
    t.text "crim"
    t.text "law"
    t.text "sctn_number"
    t.text "cr"
    t.text "lw"
    t.text "sec_number"
    t.text "cri"
    t.text "la"
    t.text "st"
    t.text "ci"
    t.text "l"
    t.text "sn"
    t.text "cm"
    t.text "se"
    t.text "ce"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divisi9s", force: :cascade do |t|
    t.text "se_"
    t.text "cme"
    t.text "ls"
    t.text "secn_nr"
    t.text "ce"
    t.text "sen_nr"
    t.text "crm"
    t.text "l"
    t.text "sctn_nr"
    t.text "r"
    t.text "lw"
    t.text "sec_nber"
    t.text "cri"
    t.text "la"
    t.text "st"
    t.text "ci"
    t.text "sn"
    t.text "cm"
    t.text "se"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "division1s", force: :cascade do |t|
    t.text "section_number"
    t.text "crime"
    t.text "laws"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lawyers", force: :cascade do |t|
    t.text "name"
    t.text "expertise"
    t.integer "phone_number"
    t.text "email_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.text "first_name"
    t.text "second_name"
    t.integer "phone_numbe"
    t.text "email_address"
    t.text "lawyer"
    t.text "complaint"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["remember_token"], name: "index_users_on_remember_token"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
