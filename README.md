# 一番小さなRailsアプリ
- rails new helloworld
- rails g controller hello index
- app/views/hello/index.html.erb
  - <p>Hello world!</p>
  - <p>現在時刻: <%= @time %></p>
- app/controllers/hello_controller.rb @time = Time.current.in_time_zone('Asia/Tokyo')

# Webアプリをまずはつくってみよう, CRUDの基礎とindexアクション
- rails new books_app
- rails g scaffold book title memo:text author picture
- rails db:migrate



# CRUDの基礎とindexアクション ステップ実行(オプション)

## rails new
- rails new books_app
- rails g scaffold book title:string memo:text
- rails db:migrate

## author カラム増
- rails g migration AddAuthorToBooks author:string
- rails db:migrate
- app/views/books/_form.html.erb 更新
```
  <div class="field">
    <%= form.label :author %>
    <%= form.text_area :author, id: :book_author %>
  </div>
```

- app/views/books/show.html.erb 更新
```
<p>
  <strong>Author:</strong>
  <%= @book.author %>
</p>
```

- app/views/books/index.html.erb 更新
```
      <th>Author</th>
```
```
        <td><%= book.author %></td>
```

- app/controllers/books_controller.rb strongparams更新

## 画像投稿
- rails g migration AddPictureToBooks picture:string
- rails db:migrate
- gem 'carrierwave' 追加
- bundle
- rails g uploader Picture
- app/models/book.rb mount_uploader :picture, PictureUploader
- app/views/books/_form.html.erb file_field
```
  <div class="field">
    <%= form.label :picture %>
    <%= form.file_field :picture, id: :book_picture %>
  </div>
```

- app/views/books/show.html.erb
```
<p>
  <strong>Picture:</strong>
  <%= image_tag(@book.picture_url) if @book.picture.present? %>
</p>
```

- app/views/books/index.html.erb picture追加
```
      <th>Picture</th>
```
```
        <td><%= book.picture %></td>
```
