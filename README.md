# Thinking

"Thinking"は目標を細分化することで、目標達成するためのToDoをまとめることができます。
*他のユーザーと目標へのToDoを共有することができます。
*参考にしている書籍や動画等あれば共有することができます。
*コメント機能でアドバイスや応援等をすることができます。

設定した目標を達成するため、小さいことからコツコツ取り組めるように可視化
できるようにしました。他のユーザーと共有することで自分とは違った思考を見る
ことができ、自分の目標達成の参考になればと考えました。
------------------------------------------------------------
### 機能
*ユーザー管理機能
 新規登録でニックネームとメールアドレス、パスワードを登録します。その後ログインはメールアドレスとパスワードで行います。

*マップ作成機能
 漠然とした目標に対して細分化を図ることで目標に対しての通過点を自分で認識できるものです。

*新規投稿機能
 自分はこうした考えだが他の人はどういった考えを持っているのか参考にできる

*コメント機能
 コメントの投稿、閲覧ができます。アドバイスをもらえたり、アドバイスをしたりできる。近い目標の人同士での励まし合いなどモチベーションに繋がっていと考えています。

*good機能
 気軽に投稿者を応援することができる人数が多いと目標に対してのモチベーションが上がることを期待しています。
-------------------------------------------------------------
## テーブル設計

### users テーブル
| column          | Type    | Option      |
|-----------------|---------|-------------|
| nickname        | string  | null: false |
| email           | string  | null: false |
| password        | string  | null: false |

### Association
has_many :fragments
has_many :comments
has_many :fragments, through: :comments
has_many :likes
has_many :fragments, through: :likes

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
belongs_to_active_hash :genre
has_many :comments
has_many :users, through: :comments
has_many likes
has_many :users, through: :likes

## commentテーブル
| colum       | Type    | Option                        |
|-------------|---------|-------------------------------|
| comment     | text    | null: false                   |
| user_id     | integer | null: false foreign_key: true |
| fragment_id | integer | null: false foreign_key: true |

### Association
belongs_to :user
belongs _to :fragment

## likeテーブル
| colum       | Type    | Option                        |
|-------------|---------|-------------------------------|
| user_id     | integer | null: false foreign_key: true |
| fragment_id | integer | null: false foreign_key: true |

### Association
belongs_to :user
belongs_to :fragment

