# README

This README would normally document whatever steps are necessary to get the
application up and running.

## usersテーブル
|Column|Type|Options|
|------|-------|--------|
|name|string|add_index, unique: true,null: false|
|email|string|null:false|

### association
-has_many :groups,throgh::members
-has_many :members
-has_many :messages


## messagesテーブル
|Column|Type|Options|
|------|-------|--------|
|body|text|null: false|
|image|string||
|user_id|integer|null:false,foreign_key: true|
|group_id|integer|null:false,foreign_key: true|

### association
-belongs_to :group
-belongs_to :user

## groupテーブル
|Column|Type|Options|
|------|-------|--------|
|name|string|null: false|

### association
-has_many :usres,through::members
-has_many :members
-has_many :messages




## membersテーブル

|Column|Type|Options|
|------|-------|--------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|


### association
- belongs_to :group
- belongs_to :user

* .....

