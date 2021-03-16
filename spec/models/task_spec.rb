require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'validation' do
    it 'is valid with all attributes' do
      task = FactoryBot.build(:task)
      expect(task).to be_valid
    end
    it 'is invalid without title' do
      task = FactoryBot.build(:task, title: nil)
      task.valid?
      expect(task.errors[:title]).to include("can't be vlank")
    end
    it 'is invalid without status' do
      task = FactoryBot.build(:task, status: nil)
      task.valid?
      expect(task.errors[:status]).to include("can't be vlank")
     end
    it 'is invalid with a duplicate title' do
      FactoryBot.create(task)
      task = FactoryBot.build(task)
      task.valid?
      expect(task.errors[:title]).to include("has arleady been taken")
     end
    it 'is valid with another title' do end
  end
end
