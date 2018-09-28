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

ActiveRecord::Schema.define(version: 2018_09_28_043833) do

  create_table "animals", force: :cascade do |t|
    t.string "nombre"
    t.integer "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "especi_id"
    t.integer "padre_id"
    t.integer "padre_especie_id"
    t.index ["especi_id"], name: "index_animals_on_especi_id"
    t.index ["padre_especie_id"], name: "index_animals_on_padre_especie_id"
    t.index ["padre_id"], name: "index_animals_on_padre_id"
  end

  create_table "especies", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recomendacions", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vacuna_id"
    t.integer "animal_id"
    t.string "imageable_type"
    t.integer "imageable_id"
    t.index ["animal_id"], name: "index_recomendacions_on_animal_id"
    t.index ["imageable_type", "imageable_id"], name: "index_recomendacions_on_imageable_type_and_imageable_id"
    t.index ["vacuna_id"], name: "index_recomendacions_on_vacuna_id"
  end

  create_table "vacuna_has_animals", force: :cascade do |t|
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vacuna_id"
    t.integer "animal_id"
    t.index ["animal_id"], name: "index_vacuna_has_animals_on_animal_id"
    t.index ["vacuna_id"], name: "index_vacuna_has_animals_on_vacuna_id"
  end

  create_table "vacunas", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
