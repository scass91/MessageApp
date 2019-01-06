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

![Imgur](https://i.imgur.com/bdUOVTx.png)


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
  1 | Hello                                        | 2018-12-29 13:42:02
  2 | This message                                 | 2018-12-29 13:42:23
  3 | is under 20 chars                            | 2018-12-29 13:42:31
  4 | Unlike this message which doesn't fully show | 2018-12-29 13:42:41
(4 rows)
```

Our approach to this challenge
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

* After receiving our user stories, we began with diagramming & modelling what information we were given, as well as thinking about initial tests which would form our BDD process
![Imgur](https://i.imgur.com/yyOkCrt.jpg)
![Imgur](https://i.imgur.com/XXlqBaM.jpg)
