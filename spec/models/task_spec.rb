require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'validation' do
    it 'is valid with all attributes' do
      task = build(:task)
      expect(task).to be_valid
      expect(task.errors).to be_empty
    end
    it 'is invalid without title' do
      task = build(:task, title: nil)
      task.valid?
      expect(task.errors[:title]).to include("can't be blank")
    end
    it 'is invalid without status' do
      task = build(:task, status: nil)
      task.valid?
      expect(task.errors[:status]).to include("can't be blank")
     end
    it 'is invalid with a duplicate title' do
      task1 = create(:task, title: 'hoge')
      task = build(task)
      task.valid?
      expect(task.errors[:title]).to include("has arleady been taken")
     end
    it 'is valid with another title' do
      FactoryBot.crate(task)
      taks = FactoryBot.build(taks)
    end
  end
end
