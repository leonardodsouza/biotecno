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

ActiveRecord::Schema.define(version: 20171128120621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ajuda_translations", force: :cascade do |t|
    t.integer "ajuda_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pergunta"
    t.text "resposta"
    t.index ["ajuda_id"], name: "index_ajuda_translations_on_ajuda_id"
    t.index ["locale"], name: "index_ajuda_translations_on_locale"
  end

  create_table "ajudas", force: :cascade do |t|
    t.string "pergunta"
    t.text "resposta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "anexos", force: :cascade do |t|
    t.string "nome"
    t.text "legenda"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "arquivo_file_name"
    t.string "arquivo_content_type"
    t.integer "arquivo_file_size"
    t.datetime "arquivo_updated_at"
  end

  create_table "artigo_translations", force: :cascade do |t|
    t.integer "artigo_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "titulo"
    t.text "resumo"
    t.text "texto"
    t.index ["artigo_id"], name: "index_artigo_translations_on_artigo_id"
    t.index ["locale"], name: "index_artigo_translations_on_locale"
  end

  create_table "artigos", force: :cascade do |t|
    t.string "titulo"
    t.text "resumo"
    t.text "texto"
    t.integer "visualizacoes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "foto_file_name"
    t.string "foto_content_type"
    t.integer "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "assistencias", force: :cascade do |t|
    t.string "nome"
    t.string "estado"
    t.string "cidade"
    t.string "endereco"
    t.string "telefone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banner_translations", force: :cascade do |t|
    t.integer "banner_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "titulo"
    t.text "descricao"
    t.index ["banner_id"], name: "index_banner_translations_on_banner_id"
    t.index ["locale"], name: "index_banner_translations_on_locale"
  end

  create_table "banners", force: :cascade do |t|
    t.string "titulo"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_file_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "categoria_translations", force: :cascade do |t|
    t.integer "categoria_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nome"
    t.text "descricao"
    t.index ["categoria_id"], name: "index_categoria_translations_on_categoria_id"
    t.index ["locale"], name: "index_categoria_translations_on_locale"
  end

  create_table "categorias", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_file_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "img_updated_at"
    t.string "classe"
    t.string "titulo"
    t.string "texto"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "data_fingerprint"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "contatos", force: :cascade do |t|
    t.string "nome"
    t.string "razao"
    t.string "tipo"
    t.string "outro"
    t.string "email"
    t.string "telefone"
    t.string "estado"
    t.string "cidade"
    t.text "mensagem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string "sigla"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fotos", force: :cascade do |t|
    t.bigint "produto_id"
    t.string "legenda"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "foto_file_name"
    t.string "foto_content_type"
    t.integer "foto_file_size"
    t.datetime "foto_updated_at"
    t.index ["produto_id"], name: "index_fotos_on_produto_id"
  end

  create_table "graficos", force: :cascade do |t|
    t.string "item"
    t.date "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manutencoes", force: :cascade do |t|
    t.string "nome"
    t.string "razao"
    t.string "modelo"
    t.string "email"
    t.string "telefone"
    t.string "estado"
    t.string "cidade"
    t.string "solicitacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "serie"
  end

  create_table "orcamentos", force: :cascade do |t|
    t.bigint "produto_id"
    t.string "nome"
    t.string "razao"
    t.string "tipo"
    t.string "outro"
    t.string "email"
    t.string "telefone"
    t.string "estado"
    t.string "cidade"
    t.text "mensagem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_orcamentos_on_produto_id"
  end

  create_table "pagina_translations", force: :cascade do |t|
    t.integer "pagina_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "titulo"
    t.text "texto"
    t.index ["locale"], name: "index_pagina_translations_on_locale"
    t.index ["pagina_id"], name: "index_pagina_translations_on_pagina_id"
  end

  create_table "paginas", force: :cascade do |t|
    t.string "titulo"
    t.text "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produto_translations", force: :cascade do |t|
    t.integer "produto_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "resumo"
    t.text "descricao"
    t.index ["locale"], name: "index_produto_translations_on_locale"
    t.index ["produto_id"], name: "index_produto_translations_on_produto_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.bigint "categoria_id"
    t.string "modelo"
    t.text "resumo"
    t.text "descricao"
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "foto_file_name"
    t.string "foto_content_type"
    t.integer "foto_file_size"
    t.datetime "foto_updated_at"
    t.integer "visualizacoes"
    t.integer "ordem"
    t.index ["categoria_id"], name: "index_produtos_on_categoria_id"
  end

  create_table "quem_somo_translations", force: :cascade do |t|
    t.integer "quem_somo_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "titulo"
    t.text "texto"
    t.index ["locale"], name: "index_quem_somo_translations_on_locale"
    t.index ["quem_somo_id"], name: "index_quem_somo_translations_on_quem_somo_id"
  end

  create_table "quem_somos", force: :cascade do |t|
    t.string "titulo"
    t.string "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_file_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "usuarios", force: :cascade do |t|
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
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  create_table "video_translations", force: :cascade do |t|
    t.integer "video_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "titulo"
    t.text "texto"
    t.index ["locale"], name: "index_video_translations_on_locale"
    t.index ["video_id"], name: "index_video_translations_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "titulo"
    t.text "texto"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visualizacaos", force: :cascade do |t|
    t.string "modelo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "fotos", "produtos"
  add_foreign_key "orcamentos", "produtos"
  add_foreign_key "produtos", "categorias"
end
