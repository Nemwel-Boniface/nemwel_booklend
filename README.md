# Nemwel Book Lend

As an avid reader, I often find myself with a shortage of books to read especially when I have already read the book that I currently have and I do not have enough funds to get a new one for myself(A new read). Having a platform where users are able to share the books that they currently have and allow them to be borrowed by other people and be given a specified timeline to deliver them back after the lenidn g period is elapsed.

With this software, you will be able to easily manage your book collection, track which books you’ve lent out, and receive reminders when they are due for return. It provides a seamless way for readers to share books with others while ensuring accountability through a structured borrowing system. Whether you're lending or borrowing, the platform helps you keep track of due dates, reducing the chances of losing books or forgetting returns.You will be able to create a "collection" having groups such as local (Kienyeji) or broiler chicken. Kuku is Swahili for chicken.

This application will help me practice:
1. The REST framework by implementing CRUD operations for adding, deleting, and updating data.
2. Writing integrated unit tests using the [Minitest](https://guides.rubyonrails.org/testing.html) library for unit tests for my API end points.
3. The Ruby on Rails [MVC](https://www.bogotobogo.com/RubyOnRails/RubyOnRails_Model_View_Controller_MVC.php). pattern, focusing on Models and Controllers to handle business logic and data processing.
4. Project documentation by writing a detailed README upon completion to help others understand and use my project.
5. Project deployment making use of [render](https://render.com/) which will host my API application.

## How to test the application

1. Create an account to be able to access the books and borrow resources

https://github.com/user-attachments/assets/26878fe7-cb63-4a7b-a229-1ff410d115b1

2. Once Logged in as the first user, you will be able to create book records
3. Users in the system with role of "User" Can borrow a book if it is available for lending

https://github.com/user-attachments/assets/9e85265f-78bf-4fdc-ac4f-03e4fdd48254

5. **Note that** the first user in the system will have the role of an admin and will be able to create a book. All other users in the system have the type of "User" and they can only see books available, and borrow and return them.


## Video demonstrations
I created video demos of the application and the links will be as follows:
1. [Part one ](https://www.loom.com/share/91defaa83fa54a079268018d924bf630?sid=ec9f63d2-62c9-4a55-a693-e91b30123cce)which shows the GitHub Setup and describes the aim of the project.
2. [Part two](https://www.loom.com/share/1026bd0dcd4d4dcb93e504f6d39c0517?sid=e8e6fa44-3d4b-4023-ac61-189c89131ac3) which shows the working demo live showing user creation, authentication, book creation, book lending and book returning.
3. [Part three](https://www.loom.com/share/828852ff70254c0dbb2eb6f8e68a9b9b?sid=5ae418b7-6bd4-45b9-894e-e906554dfa6d), shows the code, some interesting features done and shows the results of the test.


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
 - Ruby on Rails V8
 - PostgreSQL
 - Test-driven development


# Additional Tools
  1. Rubocop
  2. Ruby Gems

# Getting Started
To get a local copy of the project and run

1. ``git@github.com:Nemwel-Boniface/nemwel_booklend.git``
2. ``cd nemwel_booklend``
3. ``gem install bundler``
4. ``bundle install``
5. ``./bin/dev``
6. You can now access your site through ``http://127.0.0.1:3000/`` 

## Database Setup
Setup db

1. ``su - postgres``
2. ``psql``
3. ``create role nemwel with createdb login password 'root'``
4. ``rails db:setup``
5. ``rails db:create``
6. ``rails db:seed``

## In your database.yml file, ensure you add the credentials as followws in the development and test blocks

```
development:
  <<: *default
  database: nemwel_booklend_development
  username: nemwel
  password: root

test:
  <<: *default
  database: nemwel_booklend_test
  username: nemwel
  password: root
```

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