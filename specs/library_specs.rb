require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

# array of book hashes used to set up the Library instance in each test.
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

    # could put new instance of Library in here rather than in each test...
  end


# test to check books getter.
  def test_check_books
    library = Library.new(@books)
    assert_equal(@books, library.books)
  end

# test to check functionality of book_info method - should return all info within hash based on book title.
  def test_book_info__present
    library = Library.new(@books)
    book_information = library.book_info("harry_potter")
    assert_equal(@books[1], book_information)
  end

# test to check functionality of book_info method - should return nil if book not present.
  def test_book_info__not_present
    library = Library.new(@books)
    book_information = library.book_info("fake_book")
    assert_nil(book_information)
  end

# test to check rental_info method - should return rental details of book based on given book title.
  def test_book_rental_info__present
    library = Library.new(@books)
    book_rental_information = library.rental_info("harry_potter")
    assert_equal(@books[1][:rental_details], book_rental_information)
  end

# test to check rental_info method - should return nil if book not present.
  def test_book_rental_info__not_present
    library = Library.new(@books)
    book_rental_information = library.rental_info("fake_book")
    assert_nil(book_rental_information)
  end

# test to check add_book method - should increase books array length by one and new book should be findable by book title.
  def test_add_book
    library = Library.new(@books)
    library.add_book("hunger_games")
    assert_equal(4, @books.length)
    assert_equal(@books[3], library.book_info("hunger_games"))
  end

# test to check rent_out method - rental details of the specified book title should have changed.
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
