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

ActiveRecord::Schema[7.0].define(version: 2022_11_05_113702) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "careers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "duration"
    t.string "modality"
    t.bigint "education_center_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["education_center_id"], name: "index_careers_on_education_center_id"
  end

  create_table "education_centers", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "p1"
    t.integer "p2"
    t.integer "p3"
    t.integer "p4"
    t.integer "p5"
    t.integer "p6"
    t.integer "p7"
    t.integer "p8"
    t.integer "p9"
    t.integer "p10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quiz_id"
    t.index ["quiz_id"], name: "index_questions_on_quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_quizzes_on_user_id"
  end

  create_table "resultados", force: :cascade do |t|
    t.string "top1"
    t.string "top2"
    t.string "top3"
    t.bigint "quiz_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "question_id"
    t.index ["question_id"], name: "index_resultados_on_question_id"
    t.index ["quiz_id"], name: "index_resultados_on_quiz_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "statement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "education_center_id"
    t.index ["education_center_id"], name: "index_reviews_on_education_center_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "last_name"
    t.string "country"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "careers", "education_centers"
  add_foreign_key "questions", "quizzes"
  add_foreign_key "quizzes", "users"
  add_foreign_key "resultados", "questions"
  add_foreign_key "resultados", "quizzes"
  add_foreign_key "reviews", "education_centers"
  add_foreign_key "reviews", "users"
end
