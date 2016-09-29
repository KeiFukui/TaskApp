class Task < ActiveRecord::Base
    belongs_to :project # projectに属してるよ。という情報
    # 必須チェック メッセージの設定はなし
    validates :title,
        presence: true
    # 未完了タスクデータ取得
    # scopeで、検索条件を指定した場合のデータを定義する(unfinishedを定義)
    scope :unfinished, -> { where(done: false) }
end
