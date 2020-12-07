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


# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :wines
- has_many :likes

## wines テーブル

| Column            | Type       | Options                        |
| ------------------| -----------| -------------------------------|
| name              | string     | null: false                    |
| color_id          | integer    | null: false                    |  
| variety_id        | integer    | null: false                    |
| country_id        | integer    | null: false                    |
| vintage           | date       | null: false                    |
| alcohol_volume_id | integer    | null: false                    |
| impression_id     | integer    | null: false                    |
| flavor_aroma_id   | integer    | null: false                    |
| acidity_level_id  | integer    | null: false                    |
| tannic_level_id   | integer    |                                |
| comment           | text       | null: false                    |
| user              | references | null: false, foreign_key: true |

## favorites テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| wine    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :wine