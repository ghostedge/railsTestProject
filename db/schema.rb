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

ActiveRecord::Schema.define(version: 2020_01_06_070837) do

  create_table "analyses", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "basic_infos", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorites", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recomd", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.float "id", limit: 53
    t.float "rc1", limit: 53
    t.float "rc2", limit: 53
    t.float "rc3", limit: 53
    t.float "rc4", limit: 53
    t.float "rc5", limit: 53
  end

  create_table "recomds", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "t_zhenai_analysis", id: :string, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "sex"
    t.string "local"
    t.string "age"
    t.string "education"
    t.string "status"
    t.string "height"
    t.string "salary"
    t.string "nation"
    t.string "shape"
    t.string "zodiac"
    t.string "hasChild"
    t.string "wantChild"
    t.string "marriageTime"
    t.string "house"
    t.string "car"
    t.string "smoke"
    t.string "drink"
  end

  create_table "t_zhenai_base", id: :string, limit: 11, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.string "local"
    t.string "age"
    t.string "education"
    t.string "status"
    t.string "height"
    t.string "salary"
    t.binary "introduce"
    t.string "photo"
    t.string "link"
  end

  create_table "t_zhenai_favorite", id: :string, limit: 11, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "food"
    t.string "song"
    t.string "book"
    t.string "thing"
    t.string "man"
  end

end
