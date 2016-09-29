class Project < ActiveRecord::Base
    # taskと1対多で紐付く
    has_many :tasks
    # 必須制御
    # 「project」を未入力の状態では保存できなくなる
    # validates :title, presence: true
    # エラーメッセージを定義（メッセージは独自定義）
    validates :title,
    presence: { message: "入力してください"},
    length:   {minimum: 3, message: "短すぎます"}
end
