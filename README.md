# README

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| lang_1 | string |  |
| lang_2 | string |  |
| lang_3 | string |  |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :messages

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name  | string | null: false |

### Association

- has_many :messages

## messages テーブル

| Column  | Type    | Options                        |
| ------- |  ------- | ------------------------------ |
| content    | string  |
| voice | string |
| sgtm | int |  |
| user_id | references | null: false, foreign_key: true |
| room_id | references | null: false, foreign_key: true |

### Association
belongs_to :room
belongs_to :user