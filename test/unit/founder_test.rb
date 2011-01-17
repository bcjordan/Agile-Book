require 'test_helper'

class FounderTest < ActiveSupport::TestCase
  fixtures :founders
  
  test "should throw errors on empty fields" do
    founder = Founder.new
    
    assert founder.invalid?
    assert founder.errors[:username].any?
    assert founder.errors[:email].any?
    assert founder.errors[:about].any?
  end
  
  test "should report error on invalid email" do
    founder = Founder.new(:username => "Test user", :email => "notanemail",
                          :about => "Valid about me.")
                          
    assert !founder.save
    assert_equal "Please enter a valid email address", founder.errors[:email].join('; ')
  end
  
  test "should not allow duplicate usernames" do
    founder = Founder.new(:username => founders(:founder_one).username,
                          :email => "test@test.com", :about => "Valid about")
                          
    assert !founder.save
    assert "This username is already taken", founder.errors[:username].join('; ')
  end
  
  test "should not allow duplicate emails" do
    founder = Founder.new(:username => "Unique Username",
                          :email => founders(:founder_one).email, :about => "Valid about")
                          
    assert !founder.save
    assert "This email is already taken", founder.errors[:email].join('; ')
  end
end
