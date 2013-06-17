require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  
  test "that a status require contents" do
    status = Status.new
    assert !status.save
    assert !status.errors[:content].empty?
  end
  
  test "that a status has at least 2 letters" do
    status = Status.new
    status.content = "M"
    
    assert !status.save
    assert !status.errors[:content].empty?
  end

  test "that a status has a user id" do
    status = Status.new

    status.content = "Hello"
    
    assert !status.save
    assert !status.errors[:content].empty?

  end

end
