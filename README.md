> env

```shell
rails 5.2.0
ruby 2.5.1
```

> start

```shell
git clone git@github.com:xiaohesong/rails-graphql.git
cp -r config/database.yml.example config/database.yml
bundle
rake db:create db:migrate db:seed
rails s -p 3003
```

启动之后，在浏览器输入`http://localhost:3003/graphiql`,可以查看doc进行操作。

也可以配合[客户端(react)](https://github.com/xiaohesong/github-graphql/blob/apollo-client/README.md)进行操作
