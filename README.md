# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|text|
|email|string|null: false|
|encrypted_password|string|null: false|
|reset_password_token|string|
|reset_password_sent_at|datetime|
|remember_created_at|datetime|

### Association
- has_many :commemts
- has_many :reports

## reportsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|
|review|text|
|url|text|
|user_id|references|foreign_key: true|
|category_id|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :category

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|review|text|
|rates|float|
|user_id|references|foreign_key: true|
|report_id|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :report

## categoryテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|
|ancestry|string|

