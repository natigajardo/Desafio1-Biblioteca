require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  
  setup do 
    @book_params = {
      title: "Book Name",
      author: "Author1",
      status: "estante",
      borrowed_at: DateTime.now,
      returned_at: DateTime.now,
      created_at: DateTime.now,
      updated_at: DateTime.now
    }

  end 

  test 'create new book' do 
    post books_url, params: { book: @book_params}
    assert_redirected_to book_url(Book.last)
  end
  
  test 'show a book' do 
    get book_url(Book.last)
    assert_response :success
  end

  #test 'get index' do 
  #  get books_url
  #  assert_response :success
  #  #assert_template :index
  #  #assert_not_nil assigns(:posts)
  #end
  
  
  #setup do
  #  @book = books(:one)
  #end

  #test "should get index" do
  #  get books_url
  #  assert_response :success
  #end

  #test "should get new" do
  #  get new_book_url
  #  assert_response :success
  #end

  #test "should create book" do
  #  assert_difference('Book.count') do
  #    post books_url, params: { book: { author: @book.author, borrowed_at: @book.borrowed_at, returned_at: @book.returned_at, status: @book.status, title: @book.title } }
  #  end

  # assert_redirected_to book_url(Book.last)
  #end

  #test "should show book" do
  #  get book_url(@book)
  #  assert_response :success
  #end

  #test "should get edit" do
  #  get edit_book_url(@book)
  #  assert_response :success
  #end

  #test "should update book" do
  #  patch book_url(@book), params: { book: { author: @book.author, borrowed_at: @book.borrowed_at, returned_at: @book.returned_at, status: @book.status, title: @book.title } }
  #  assert_redirected_to book_url(@book)
  #end

  #test "should destroy book" do
  #  assert_difference('Book.count', -1) do
  #    delete book_url(@book)
  #  end

  #  assert_redirected_to books_url
  #end
  
end
