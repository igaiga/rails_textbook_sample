# RubyとRailsのバージョン

## master, rails701_ruby310

- https://github.com/igaiga/rails_textbook_sample/releases/tag/rails701_ruby310
- Ruby 3.1.0
- Rails 7.0.1

## rails6021_ruby270

- https://github.com/igaiga/rails_textbook_sample/releases/tag/rails6021_ruby270
- Ruby 2.7.0
- Rails 6.0.2.1

# 一番小さなRailsアプリ
- rails new helloworld
- cd helloworld
- rails g controller hello index
- app/views/hello/index.html.erb
  - `<p>Hello world!</p>`
  - `<p>現在時刻: <%= @time %></p>`
- app/controllers/hello_controller.rb
  - `@time = Time.current.in_time_zone('Asia/Tokyo')`

# Webアプリをまずはつくってみよう, CRUDの基礎とindexアクション
- rails new books_app
- rails g scaffold book title memo:text author picture
- rails db:migrate

# CRUDの基礎とindexアクション ステップ実行(オプション)

## rails new
- rails new books_app
- rails g scaffold book title memo:text author
- rails db:migrate

## 画像投稿
- rails g migration AddPictureToBooks picture:string
- rails db:migrate
- gem 'carrierwave' 追加
- bundle
- bin/spring stop
- rails g uploader Picture
- app/models/book.rb mount_uploader :picture, PictureUploader
- app/controller/books_controller.rb strong paramters add picture
- app/views/books/_form.html.erb file_field
```
  <div class="field">
    <%= form.label :picture %>
    <%= form.file_field :picture, id: :book_picture %>
  </div>
```

- app/views/books/_book.html.erb
```
<p>
  <strong>Picture:</strong>
  <%= image_tag(book.picture_url) if book.picture.present? %>
</p>
```

- app/views/books/_book.html.erb picture追加
```
      <th>Picture</th>
```
```
        <td><%= book.picture %></td>
```
