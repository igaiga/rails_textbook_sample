# Webアプリをまずはつくってみよう, CRUDの基礎とindexアクション

## rails new
- rails new books_app
- cd books_app
- rails g scaffold book title:string memo:text
- rails db:migrate

## カラム増
- rails g migration AddAuthorToBooks author:string
- rails db:migrate
- app/views/books/_form.html.erb 更新
- app/views/books/show.html.erb 更新
- app/views/books/index.html.erb 更新
- app/controllers/books_controller.rb strongparams更新

## 画像投稿
- rails g migration AddPictureToBooks picture:string
- rails db:migrate
- gem 'carrierwave' 追加
- bundle
- rails g uploader Picture
- app/models/book.rb mount_uploader :picture, PictureUploader
- app/views/books/_form.html.erb file_field
- app/views/books/show.html.erb <%= image_tag(@book.picture_url) if @book.picture.present? %>
- app/views/books/index.html.erb picture追加

# 一番小さなRailsアプリ
- rails new helloworld
- rails g controller hello index
- app/views/hello/index.html.erb
  - <p>Hello world!</p>
  - <p>現在時刻: <%= @time %></p>
- app/controllers/hello_controller.rb @time = Time.current.in_time_zone('Asia/Tokyo')
