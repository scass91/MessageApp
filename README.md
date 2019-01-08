# Messenger App Challenge

How to use this webapp
---------

```
$ git clone git@github.com:scass91/MessageApp.git
$ cd MessageApp
$ bundle
$ rackup
The app should now be available in your browser at localhost:9292
Input your messages and see them in reverse chronological order
The first 20 characters of a message will be displayed 
In order to see the full contents of a message, click on it

```

![Imgur](https://i.imgur.com/sVvZ7Xk.png)


How this looks in PSQL
---------

```
You are now connected to database "messageapp_" as user "simon".
messageapp_=# \dt
         List of relations
 Schema |   Name   | Type  | Owner
--------+----------+-------+-------
 public | messages | table | simon
(1 row)

messageapp_=# SELECT * FROM messages;
 id |                   message                    |     created_at
----+----------------------------------------------+---------------------
  1 | Hello                                        | 2019-01-08 10:48:27
  2 | This message                                 | 2019-01-08 10:48:30
  3 | is under 20 chars                            | 2019-01-08 10:48:34
  4 | unlike this message which doesn't fully show | 2019-01-08 10:48:39
```

Initial user stories
---------

```
As a user
So I can store my thoughts
I want to be able to write messages on a webapp
```

```
As a user
So I can see what my old thoughts were
I want to be able to see a message history 
```

```
As a user
So I don't get confused about when I had these thoughts
I want to see a timestamp with my messages
```

Additional user stories
---------
```
As a user
So I can amend my thoughts
I want to be able to edit older messages
```

```
As a user
So I can forget my thoughts
I want to be able to delete older messages
```

## Usage

### Submit messages

1. Enter your message in the field and click 'Submit'

### Editing a message 

1. Click on a partial message link
2. Click the 'Edit' button 
3. Change your message, hit submit and return to the index page

### Deleting a message

1. Click on a message link which you'd rather forget
2. Click the 'Delete' button and return to the index page

![Imgur](https://i.imgur.com/ufrY20G.png)

Upgrading or migrating databases
---------
```
$ rake db:auto_upgrade
Upgrade successfully completed!
$ rake db:auto_migrate
Migration successfully completed!
```
