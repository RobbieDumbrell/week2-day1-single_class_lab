class Library

  def initialize(books)
    @books = books
  end

  def books
    return @books
  end

  def book_info(book_title)
    for book in @books
    return book if book[:title] == book_title
    end
    return nil
  end

  def rental_info(book_title)
    for book in @books
      return book[:rental_details] if book[:title] == book_title
    end
    return nil
  end

  def add_book(book_title)
    @books << {
      title: book_title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
  end

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
