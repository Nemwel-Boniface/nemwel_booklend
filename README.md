# Nemwel Book Lend

As an avid reader, I often find myself with a shortage of books to read especially when I have already read the book that I currently have and I do not have enough funds to get a new one for myself(A new read). Having a platform where users are able to share the books that they currently have and allow them to be borrowed by other people and be given a specified timeline to deliver them back after the lenidn g period is elapsed.

With this software, you will be able to easily manage your book collection, track which books you’ve lent out, and receive reminders when they are due for return. It provides a seamless way for readers to share books with others while ensuring accountability through a structured borrowing system. Whether you're lending or borrowing, the platform helps you keep track of due dates, reducing the chances of losing books or forgetting returns.You will be able to create a "collection" having groups such as local (Kienyeji) or broiler chicken. Kuku is Swahili for chicken.

This application will help me practice:
1. The REST framework by implementing CRUD operations for adding, deleting, and updating data.
2. Writing integrated unit tests using the [Minitest](https://guides.rubyonrails.org/testing.html) library for unit tests for my API end points.
3. The Ruby on Rails [MVC](https://www.bogotobogo.com/RubyOnRails/RubyOnRails_Model_View_Controller_MVC.php). pattern, focusing on Models and Controllers to handle business logic and data processing.
4. Project documentation by writing a detailed README upon completion to help others understand and use my project.
5. Project deployment making use of [render](https://render.com/) which will host my API application.


## Future Features

Development of this application follows a Kanban Board, which helps track tasks across different stages i.e Done, In Progress, In Review, and Pending. You can view the board and stay updated on ongoing improvements through [this GitHub project](https://github.com/users/Nemwel-Boniface/projects/9).

| Feature                | Description                                                                                                  | Status       |
|------------------------|--------------------------------------------------------------------------------------------------------------|-------------|
| Simplistic Admin View  | Allow the admin to see stats like total books, users, and active borrowings.                                | Not Started |
| Penalties for late book return | Handle overdue books by sending automated reminders and applying penalties for late returns.         | Not Started |
| Notifications Feature  | Automated notifications remind users two days before the return date and enforce penalties for late returns. | Not Started |
| Book Lend History      | Track previously borrowed books, allowing users to view their lending history and reborrow if needed.       | Started |



Enjoy!


# Built With
 - Ruby on Rails
 - PostgreSQL
 - Test-driven development


# Additional Tools
  1. Rubocop
  2. Ruby Gems

# Getting Started
To get local copy of the project and run

1. ``git@github.com:Nemwel-Boniface/nemwel_booklend.git``
2. ``cd nemwel_booklend``
3. ``gem install bundler``
4. ``bundle install``
5. ``./bin/dev``

## Database Setup
Setup db

1. ``su - postgres``
2. ``psql``
3. ``create role nemwel with createdb login password 'root'``
4. ``rails db:setup``
5. ``rails db:create``
6. ``rails db:seed``

# Tests

1. ``bundle exec rspec``
2. ``rubocop``

### Run your tests

1. ``rake test``
2. ``rails test``

### To run rubocop we use:

1. `rubocop`

### To autocorrect offenses with rubocop we use:
1. `rubocop --auto-correct-all` or
2. `rubocop -A`

Have fun with my Book Lend Application!

## Authors

👤 **Nemwel Boniface**

- GitHub: [@Nemwel Boniface](https://github.com/Nemwel-Boniface)
- Twitter: [@Nemwel Boniface](https://twitter.com/nemwel_bonie)
- LinkedIn: [@Nemwel Bonifacej](https://www.linkedin.com/in/nemwel-nyandoro/)



## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Nemwel-Boniface/nemwel_booklend/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
- Anyone whose code will be used

## 📝 License

This project is [MIT](./MIT.md) licensed.