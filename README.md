# README

This README would normally document whatever steps are necessary to get the
application up and running.

## usersテーブル
|Column|Type|Options|
|------|-------|--------|
|name|string|add_index, unique: true,null: false,|
|email|string|null:false|

Things you may want to cover:
### association

* Ruby version

## messagesテーブル
|Column|Type|Options|
|------|-------|--------|
|body|text|null: false|
|image|string||
|user_id|integer|null:false,foreign_key: true|
|group_id|integer|null:false,foreign_key: true|
|time|integer|null: false|
* System dependencies
### association

* Configuration

## groupテーブル
|Column|Type|Options|
|------|-------|--------|
|user_id|integer|null: false,foreign_key: true|
|group_id|integer|null: false,foreign_key: true|

* Database creation

* Database initialization

* How to run the test suite

## membersテーブル

|Column|Type|Options|
|------|-------|--------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|


* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

### association
- belongs_to :group
- belongs_to :user

* .....

