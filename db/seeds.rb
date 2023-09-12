# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Book.create([
    {title: 'Harry Potter', author: 'J.K. Rowling', price: 10.99, publishedDate: '2004-08-05'},
    {title: 'Eragon', author: 'Christopher Paolini', price: 13.99, publishedDate: '2009-03-02'},
    {title: 'Lord of the Rings', author: 'Forgor', price: 12.99, publishedDate: '2023-06-15'},
    {title: 'Game of Thrones', author: 'George RR. Martin', price: 20.99, publishedDate: '2000-07-25'},
    {title: 'Name of the Wind', author: 'John Doe', price: 16.56, publishedDate: '2012-01-05'},
])