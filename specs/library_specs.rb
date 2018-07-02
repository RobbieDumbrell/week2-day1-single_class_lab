require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup
    @books =  [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "harry_potter",
        rental_details: {
          student_name: "Robbie",
          date: "09/12/16"
        }
      },
      {
        title: "the_hobbit",
        rental_details: {
          student_name: "Kevin",
          date: "30/12/16"
        }
      }
    ]
  end






  def test_check_books
    library = Library.new(@books)
    assert_equal(@books, library.books)
  end

  def test_book_info__present
    library = Library.new(@books)
    book_information = library.book_info("harry_potter")
    assert_equal(@books[1], book_information)
  end

  def test_book_info__not_present
    library = Library.new(@books)
    book_information = library.book_info("fake_book")
    assert_nil(book_information)
  end

  def test_book_rental_info__present
    library = Library.new(@books)
    book_rental_information = library.rental_info("harry_potter")
    assert_equal(@books[1][:rental_details], book_rental_information)
  end

  def test_book_rental_info__not_present
    library = Library.new(@books)
    book_rental_information = library.rental_info("fake_book")
    assert_nil(book_rental_information)
  end

  def test_add_book
    library = Library.new(@books)
    library.add_book("hunger_games")
    assert_equal(4, @books.length)
    assert_equal(@books[3], library.book_info("hunger_games"))
  end

  def test_rent_out__present
    library = Library.new(@books)
    library.rent_out("lord_of_the_rings", "Robbie", "25/12/16")
    expected_book_details = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Robbie",
        date: "25/12/16"
      }
    }
    assert_equal(expected_book_details, @books[0])
  end

end
