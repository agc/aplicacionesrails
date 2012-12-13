#!/usr/bin/env ruby
require "mysql2"


begin
    cliente = Mysql2::Client.new(:host => "localhost", :database => 'intraweb13', :username => "usuariointraweb",:password => "19601706" )
    cliente.query("select * from sec_user").each(:symbolize_keys=>true) do |fila|
      puts "%i %s %s"%[fila[:id],fila[:username],fila[:password]   ]

    end


rescue Mysql2::Error => e
    puts e.errno
    puts e.error

ensure
    cliente.close if cliente
end