# SEQUELIZE notes

```
// create migration and model
$ npx sequelize-cli model:generate --name User --attributes firstName:string,lastName:string,email:string
$ npx sequelize-cli model:generate --name Flow --attributes title:string
$ npx sequelize-cli model:generate --name Task --attributes title:string,hours:integer,minutes:integer,seconds:integer
$ npx sequelize-cli migration:create --name add-type-to-tasks

```
