# テーブル設計

## users

| Column   | Type       | Options      |
| -------- | ---------- | ------------ |
| nickname | string     | null: false, |
| email    | string     | null: false, |
| password | string     | null: false, |

### Association
has_many :lists
has_many :user_rooms
has_many :messages

## rooms

| Column   | Type       | Options      |
| -------- | ---------- | ------------ |
| name     | string     | null: false, |

### Association
has_many :messages

## user_rooms

| Column   | Type           | Options                        |
| -------- | -------------- | ------------------------------ |
| user     | references     | null: false, foreign_key: true |
| room     | references     | null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :room
belongs_to :list

## messages

| Column   | Type           | Options                        |
| -------- | -------------- | ------------------------------ |
| user     | references     | null: false, foreign_key: true |
| room     | references     | null: false, foreign_key: true |
| content  | text           | null: false                    |

### Association
belongs_to :user
belongs_to :room

## lists 

| Column    | Type           | Options                        |
| --------- | -------------- | ------------------------------ |
| user      | references     | null: false, foreign_key: true |
| num       | integer        | null: false                    |
| name      | string         | null: false                    |
| list_name | string         | null: false                    |
| list      | references     | null: false, foreign_key: true |

### Association
has_many :user_rooms
belongs_to :user