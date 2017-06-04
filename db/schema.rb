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

ActiveRecord::Schema.define(version: 20170604013568) do

  create_table "archangel_assets", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "file"
    t.integer "uploader_id"
    t.integer "assetable_id"
    t.string "assetable_type"
    t.integer "file_size"
    t.string "content_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assetable_id"], name: "index_archangel_assets_on_assetable_id"
    t.index ["assetable_type"], name: "index_archangel_assets_on_assetable_type"
    t.index ["content_type"], name: "index_archangel_assets_on_content_type"
    t.index ["file"], name: "index_archangel_assets_on_file"
    t.index ["uploader_id"], name: "index_archangel_assets_on_uploader_id"
  end

  create_table "archangel_categories", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.string "description"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_archangel_categories_on_deleted_at"
    t.index ["name"], name: "index_archangel_categories_on_name"
    t.index ["slug"], name: "index_archangel_categories_on_slug", unique: true
  end

  create_table "archangel_categorizations", force: :cascade do |t|
    t.integer "categorizable_id"
    t.string "categorizable_type"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categorizable_id"], name: "index_archangel_categorizations_on_categorizable_id"
    t.index ["categorizable_type"], name: "index_archangel_categorizations_on_categorizable_type"
    t.index ["category_id"], name: "index_archangel_categorizations_on_category_id"
  end

  create_table "archangel_menu_items", force: :cascade do |t|
    t.integer "menu_id"
    t.integer "parent_id"
    t.string "label"
    t.string "attr_id"
    t.string "attr_class"
    t.string "link_attr_class"
    t.string "target"
    t.string "highlights_on"
    t.string "url"
    t.integer "menuable_id"
    t.string "menuable_type"
    t.string "method"
    t.integer "position"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_archangel_menu_items_on_deleted_at"
    t.index ["label"], name: "index_archangel_menu_items_on_label"
    t.index ["menu_id"], name: "index_archangel_menu_items_on_menu_id"
    t.index ["menuable_id"], name: "index_archangel_menu_items_on_menuable_id"
    t.index ["menuable_type"], name: "index_archangel_menu_items_on_menuable_type"
    t.index ["parent_id"], name: "index_archangel_menu_items_on_parent_id"
  end

  create_table "archangel_menus", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.string "attr_id"
    t.string "attr_class"
    t.string "selected_class"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_archangel_menus_on_deleted_at"
    t.index ["name"], name: "index_archangel_menus_on_name"
    t.index ["slug"], name: "index_archangel_menus_on_slug", unique: true
  end

  create_table "archangel_pages", force: :cascade do |t|
    t.string "title"
    t.integer "author_id"
    t.integer "parent_id"
    t.string "path"
    t.string "slug"
    t.boolean "homepage", default: false
    t.text "content", default: ""
    t.string "meta_keywords"
    t.string "meta_description"
    t.datetime "deleted_at"
    t.datetime "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_archangel_pages_on_author_id"
    t.index ["content"], name: "index_archangel_pages_on_content"
    t.index ["deleted_at"], name: "index_archangel_pages_on_deleted_at"
    t.index ["homepage"], name: "index_archangel_pages_on_homepage"
    t.index ["parent_id"], name: "index_archangel_pages_on_parent_id"
    t.index ["path"], name: "index_archangel_pages_on_path", unique: true
    t.index ["published_at"], name: "index_archangel_pages_on_published_at"
    t.index ["slug"], name: "index_archangel_pages_on_slug"
    t.index ["title"], name: "index_archangel_pages_on_title"
  end

  create_table "archangel_posts", force: :cascade do |t|
    t.string "title"
    t.string "path"
    t.string "slug"
    t.integer "author_id"
    t.text "content", default: ""
    t.string "meta_keywords"
    t.string "meta_description"
    t.string "feature"
    t.datetime "deleted_at"
    t.datetime "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_archangel_posts_on_author_id"
    t.index ["content"], name: "index_archangel_posts_on_content"
    t.index ["deleted_at"], name: "index_archangel_posts_on_deleted_at"
    t.index ["path"], name: "index_archangel_posts_on_path", unique: true
    t.index ["published_at"], name: "index_archangel_posts_on_published_at"
    t.index ["slug"], name: "index_archangel_posts_on_slug"
    t.index ["title"], name: "index_archangel_posts_on_title"
  end

  create_table "archangel_sites", force: :cascade do |t|
    t.string "name", default: "Archangel", null: false
    t.string "locale", default: "en", null: false
    t.string "logo"
    t.string "meta_keywords"
    t.string "meta_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "theme"
    t.string "favicon"
  end

  create_table "archangel_taggings", force: :cascade do |t|
    t.integer "taggable_id"
    t.string "taggable_type"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_archangel_taggings_on_tag_id"
    t.index ["taggable_id"], name: "index_archangel_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_archangel_taggings_on_taggable_type"
  end

  create_table "archangel_tags", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.string "description"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_archangel_tags_on_deleted_at"
    t.index ["name"], name: "index_archangel_tags_on_name"
    t.index ["slug"], name: "index_archangel_tags_on_slug", unique: true
  end

  create_table "archangel_users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "username", default: "", null: false
    t.string "role"
    t.string "avatar"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.integer "invited_by_id"
    t.integer "invitations_count", default: 0
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_archangel_users_on_confirmation_token", unique: true
    t.index ["deleted_at"], name: "index_archangel_users_on_deleted_at"
    t.index ["email"], name: "index_archangel_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_archangel_users_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_archangel_users_on_invitations_count"
    t.index ["invited_by_id"], name: "index_archangel_users_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_archangel_users_on_invited_by_type_and_invited_by_id"
    t.index ["name"], name: "index_archangel_users_on_name"
    t.index ["reset_password_token"], name: "index_archangel_users_on_reset_password_token", unique: true
    t.index ["role"], name: "index_archangel_users_on_role"
    t.index ["unlock_token"], name: "index_archangel_users_on_unlock_token", unique: true
    t.index ["username"], name: "index_archangel_users_on_username", unique: true
  end

end
