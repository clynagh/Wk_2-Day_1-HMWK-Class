class Library

  attr_reader :books

  def initialize(books)
  @books = books || []
  end


  def find_book(title)
    for book in books
      if book[:title] == title
        return book
      end
    end
    return nil
  end

  def find_renting_info(title)
info = "Book not found."
book = find_book(title)
info = book[:rental_details]
book != nil
return info

end

end
