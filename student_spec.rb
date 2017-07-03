require ("minitest/autorun")
require ("minitest/rg")
require_relative ("./student")

class TestStudent < MiniTest::Test

 def test_create
  student1 = Student.new("Stuart", 14)
  assert_equal("Stuart", student1.get_name)
  assert_equal(14, student1.get_cohort)
end

def test_update
  student1 = Student.new("Stuart", 14)
  student1.update("Craig", 15)
  assert_equal("Craig", student1.get_name)
  assert_equal(15, student1.get_cohort)
end

def test_talk
  student1 = Student.new("Stuart", 14)
  assert_equal("I can talk!", student1.talk)
end

def test_favourite_language
  student1 = Student.new("Stuart", 14)
  assert_equal("I love Ruby!", student1.favourite_language("Ruby"))
end

end