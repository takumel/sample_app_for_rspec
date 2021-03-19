require 'rails_helper'

RSpec.describe "Tasks", type: :system do
  describe "ログイン前" do
    describe "ページの変遷" do
      context "タスクの新規作成ページに移動" do
        it 'タスクの新規作成ページの移動に失敗する'
      end
      context "タスクの編集ページに移動" do
        it 'タスクの編集ページの移動に失敗する'
      end
      context "タスクの詳細ページに移動" do
        it 'タスクの詳細ページに移動する'
      end
      context "タスクの一覧ページに移動" do
        it 'タスクの一覧ページの移動する'
      end     
    end   
  end
  describe "ログイン後" do
    describe "タスクの新規作成" do
      context "フォームの入力値が正常" do
        it 'タスクの新規作成が成功する'
      end
      context "タイトルが未入力" do
        it 'タスクの新規作成が失敗する'
      end
      context "使用済みのタイトルを使用" do
        it 'タスクの新規作成が失敗する'
      end
      context "ステータスが未入力" do
        it 'タスクの新規作成が失敗する'
      end
    end
    describe "タスクの編集" do
      context "フォームの入力値が正常" do
        it 'タスクの新規作成が成功する'
      end
      context "タイトルが未入力" do
        it 'タスクの編集が失敗する'
      end
      context "使用済みのタイトルを使用" do
        it 'タスクの編集が失敗する'
      end
    end
    describe "タスクの削除" do
      it 'タスクの削除に成功する'
    end
    
  end
end
