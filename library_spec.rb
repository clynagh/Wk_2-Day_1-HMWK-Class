require ("minitest/autorun")
require ("minitest/rg")
require_relative ("./library")

class TestLibrary < MiniTest::Test

  def setup

    @book = { 
      title: "lord_of_the_rings",
      rental_details: { 
       student_name: "Jeff", 
       date: "01/12/16"
       },
       { 
        title: "lord_of_the_flies",
        rental_details: { 
         student_name: "Mary", 
         date: "01/01/17"
         },
         { 
          title: "lord_of_the_dance",
          rental_details: { 
           student_name: "Simon", 
           date: "23/12/16"
         }
       }



  def test_library
    library = Library.new()

    assert_equal()

  end

end
