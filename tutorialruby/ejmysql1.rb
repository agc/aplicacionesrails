#!/usr/bin/env ruby
require "mysql2"


begin
    con = Mysql2::Client.new(:host => "localhost", :database => 'intraweb13', :username => "usuariointraweb",:password => "19601706" )

    puts con.get_server_info
    rs = con.query 'SELECT VERSION()'
    puts rs.fetch_row

rescue Mysql2::Error => e
    puts e.errno
    puts e.error

ensure
    con.close if con
end