# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_04_102507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "application_features", force: :cascade do |t|
    t.string "icon"
    t.string "feature"
    t.string "description"
    t.boolean "highlighted_style"
    t.boolean "list_style"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "applications_id"
    t.index ["applications_id"], name: "index_application_features_on_applications_id"
  end

  create_table "application_resources", force: :cascade do |t|
    t.bigint "applications_id"
    t.bigint "literatures_id"
    t.index ["applications_id"], name: "index_application_resources_on_applications_id"
    t.index ["literatures_id"], name: "index_application_resources_on_literatures_id"
  end

  create_table "application_training_videos", force: :cascade do |t|
    t.bigint "applications_id"
    t.bigint "training_videos_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["applications_id"], name: "index_application_training_videos_on_applications_id"
    t.index ["training_videos_id"], name: "index_application_training_videos_on_training_videos_id"
  end

  create_table "applications", force: :cascade do |t|
    t.string "name"
    t.string "slogan"
    t.text "overview"
    t.text "features"
    t.string "top_img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "blog_article_tags", force: :cascade do |t|
    t.bigint "blog_tag_id"
    t.bigint "blog_article_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "blog_articles", force: :cascade do |t|
    t.string "subject"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "blog_category_id"
    t.bigint "account_id"
    t.index ["account_id"], name: "index_blog_articles_on_account_id"
    t.index ["blog_category_id"], name: "index_blog_articles_on_blog_category_id"
  end

  create_table "blog_categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "blog_tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.string "subject"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "knowledge_base"
  end

  create_table "literature_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "literature_download_counts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "literatures_id"
    t.index ["literatures_id"], name: "index_literature_download_counts_on_literatures_id"
  end

  create_table "literatures", force: :cascade do |t|
    t.string "subject"
    t.text "text"
    t.string "file_type"
    t.integer "file_size"
    t.bigint "literature_category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "source"
    t.index ["literature_category_id"], name: "index_literatures_on_literature_category_id"
  end

  create_table "press_releases", force: :cascade do |t|
    t.string "subject"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_features", force: :cascade do |t|
    t.string "icon"
    t.string "feature"
    t.string "description"
    t.boolean "highlighted_style"
    t.boolean "list_style"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "product_id"
    t.index ["product_id"], name: "index_product_features_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "slogan"
    t.text "overview"
    t.text "purpose"
    t.string "top_img"
    t.string "bottom_img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.text "about"
    t.string "name"
    t.string "img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "position"
  end

  create_table "testimonials", force: :cascade do |t|
    t.text "text"
    t.string "name"
    t.string "img"
    t.string "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "training_video_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "training_videos", force: :cascade do |t|
    t.string "subject"
    t.string "link"
    t.bigint "training_video_category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["training_video_category_id"], name: "index_training_videos_on_training_video_category_id"
  end

  add_foreign_key "application_features", "applications", column: "applications_id"
  add_foreign_key "application_resources", "applications", column: "applications_id"
  add_foreign_key "application_resources", "literatures", column: "literatures_id"
  add_foreign_key "application_training_videos", "applications", column: "applications_id"
  add_foreign_key "application_training_videos", "training_videos", column: "training_videos_id"
  add_foreign_key "blog_article_tags", "blog_articles"
  add_foreign_key "blog_article_tags", "blog_tags"
  add_foreign_key "blog_articles", "accounts"
  add_foreign_key "blog_articles", "blog_categories"
  add_foreign_key "literature_download_counts", "literatures", column: "literatures_id", on_delete: :cascade
  add_foreign_key "literatures", "literature_categories"
  add_foreign_key "product_features", "products"
  add_foreign_key "training_videos", "training_video_categories"
end
