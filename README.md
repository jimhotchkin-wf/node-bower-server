# Bower Server

## Vagrantized For Your Protection

`vagrant up`

`vagrant ssh`

## Configure Postgresql
    
`sudo su`

`sudo -u postgres psql postgres`

postgres=# `\password postgres` (password: root_001101)

`ctrl-d` to exit psql shell

`sudo -u postgres createuser --superuser vagrant`

`sudo -u postgres psql`

postgres=# `\password vagrant` (password: dev_001101)

`ctrl-d` to exit psql shell

`exit` to logout from user 'postgres' back to user 'vagrant'

`createdb bower-registry`

`node index.js` to init database and start server on [http://localhost:3000](http://localhost:3000)


## Create package

`curl http://localhost:3000/packages -v -F 'name=jquery' -F 'url=git://github.com/jquery/jquery.git'`

- or -

`curl http://localhost:3000/packages -v -F 'name=wf-web-skin' -F 'url=git@github.com:WebFilings/web-skin.git'`

## Find package

`curl http://localhost:3000/packages/jquery`

    {
        "name":"jquery",
        "url":"git://github.com/jquery/jquery.git"
    }

## License

Copyright 2012 Twitter, Inc.

Licensed under the MIT License