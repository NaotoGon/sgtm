# README

# アプリケーション概要

音声ファイルとテキストをアップロードして発音にレビューをもらえる

# URL

# 利用方法

初回は登録をして利用する。
質問があれば部屋を作って投稿する。
過去の類似の質問が閲覧できる。

# 目的

外国語学習で発音の勉強の機会が著しく少ない。
気軽に発音についてレビューがもらえる場所として使ってもらう。

# 実装した機能
- ユーザー管理機能
ユーザー情報を登録、編集できる。

- ルーム作成機能
質問をするときはルームを作る。カテゴリーを選択する。

- メッセージ、音声投稿機能（未実装）
テキストと音声ファイルを投稿できる

- SGTM（いいね）機能
良いレビューや発音に対していいねできる。

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

# ローカルでの動作方法
ローカルサーバーをrails sで立ち上げてからブラウザで開いてください。
環境:rails 6.0.0