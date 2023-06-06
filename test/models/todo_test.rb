# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  due_date    :datetime
#  priority    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class TodoTest < ActiveSupport::TestCase

  test "title should not be empty" do
    todo = Todo.new
    todo.save
    puts todo.errors.full_messages
    assert todo.errors.any?, "No encontramos errores"
  end

  test "todo should be saved if title is present" do
    todo = Todo.new
    todo.title = "Hola mundo"
    todo.save
    assert todo.persisted?
  end
  
end
