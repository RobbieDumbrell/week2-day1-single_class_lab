# Creating a Library class that takes one property being books (which is an array of hashes).

class Library

  def initialize(books)
    @books = books
  end

# getter for books
  def books
    return @books
  end

# method that returns all info about a book (a hash) taking a book title as a string, or nil if book is not present.
  def book_info(book_title)
    for book in @books
    return book if book[:title] == book_title
    end
    return nil
  end

# method that returns rental info (a hash) about a book (a hash) taking a book title as a string, or nil if book is not present.
  def rental_info(book_title)
    for book in @books
      return book[:rental_details] if book[:title] == book_title
    end
    return nil
  end

# method to add a new book (as a hash with empty rental details) to the books variable, taking a book title as a string.
  def add_book(book_title)
    @books << {
      title: book_title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
  end

# method that alters the rental details about a book, taking book title (string), new student (string) and new due date (string). Matches book title with book in array.
  def rent_out(book_title, student, due_date)
    for book in @books
      if book[:title] == book_title
        book[:rental_details][:student_name] = student
        book[:rental_details][:date] = due_date
      end
    end
    return nil
  end

end
