### Simple mongodb app
This is a blogging application which uses mongodb to store posts and comments.

### Installation
Get mongodb:

```
$ brew install mongodb
$ brew tap homebrew/services
$ brew services start mongodb
```
Visit `localhost:27017` to see if the database is working.

Change directory to project directory, run `bundle install` and start the server:

`$ rackup`

Visit `localhost:9292/api/status` to see if the server is working correctly. You should see following response:

`{status: "ok"}` 

### Endpoints

#### As admin

Get a list of all posts:

`curl http://localhost:9292/api/v1/admin/posts`

Get a specific post:

`curl http://localhost:9292/api/v1/admin/posts/POST_ID`

Create a post:

`curl http://localhost:9292/api/v1/admin/posts -d "slug=superslug&title=Test1&content=this is my post content"`

Update a post:

`curl -X PUT http://localhost:9292/api/v1/admin/posts/POST_ID -d "slug=superslugx&title=Test2&content=this is my post content"`

Delet a post:

`curl -X DELETE http://localhost:9292/api/v1/admin/posts/POST_ID`


#### As regular user

Get list of all posts:

`curl http://localhost:9292/api/v1/posts`

Get specific post:

`curl http://localhost:9292/api/v1/posts/POST_ID`

Create a comment:

`curl http://localhost:9292/api/v1/posts/POST_ID/comments -d "author=thibault&email=thibault@example.com&website=samurails.com&content=Cool"`

Update a comment:

`curl -X PUT http://localhost:9292/api/v1/posts/POST_ID/comments/COMMENT_ID -d "author=tibo&email=tibo@example.com&website=example.com&content=Awesome"`

Delete a comment:

`curl -X DELETE http://localhost:9292/api/v1/posts/POST_ID/comments/COMMENT_ID`
