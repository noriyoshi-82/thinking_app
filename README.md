# テーブル設計

## users テーブル
| column          | Type    | Option      |
|-----------------|---------|-------------|
| nickname        | string  | null: false |
| email           | string  | null: false |
| password        | string  | null: false |

### Association
has_many :fragments
has_many :comments


## fragmentsテーブル
| column          | Type     | Option                        |
|-----------------|----------|-------------------------------|
| title           | text     | null: false                   |
| genre           | integer  | null: false                   |
| heading_a       | text     | null: false                   |
| heading_b       | text     |                               |
| heading_c       | text     |                               |
| heading_a_a     | text     | null: false                   |
| heading_a_b     | text     |                               |
| heading_b_a     | text     |                               |
| heading_b_a     | text     |                               |
| heading_b_b     | text     |                               |
| heading_c_a     | text     |                               |
| heading_c_b     | text     |                               |
| user_id         | integer  | null: false foreign_key: true |

### Association
belongs_to :user
has_many :comments

## commentテーブル
| colum       | Type    | Option                        |
|-------------|---------|-------------------------------|
| comment     | text    | null: false                   |
| user_id     | integer | null: false foreign_key: true |
| fragment_id | integer | null: false foreign_key: true |

### Association
belongs_to :user
belongs _to :fragment