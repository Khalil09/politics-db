# Server EVO (API)
---
This is the repository dedicated to the EVO project made as work for the final project of Database of the University of Brasilia.

---

### How to use

Clone the entire repository:

```sh
git clone https://github.com/claudiosegala/politics-db.git
cd politics-db/server
```
You must have node version >= 8.

```sh
npm install
npm start
```
This will take care to start the server.

### Database

First thing to do is configure *user* with create database permission in mysql server.

Log in *mysql* server with *root* or other user with permission to create another users.
```sh
mysql -u root -p

```
Now create another *user*:

```sql
CREATE USER 'politics'@'localhost' IDENTIFIED BY '12345678';

GRANT ALL PRIVILEGES ON * . * TO 'politics'@'localhost';
```

To change what *user* and *password* will be use by *mysql* in server change in file *dbconfig.json*

config/dbconfig.json
```json
{
    "config_database": {
        "host": "localhost",
        "user": "politics",
        "password": "12345678",
        "database": "politics_db",
        "port": "3306"
    }
}
```
Change **user** and **password** if will not use the default.

After that execute:
```sh
npm link
```

Now you have 3 commands in your terminal:
- create-db : Create a new database if not exist in server
- drop-db : Drop the database politics_db
- migrate-db : Run the SQL code inside file in *db/seed.sql* on politics_db
