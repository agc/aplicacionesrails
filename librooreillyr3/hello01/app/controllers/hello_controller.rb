class HelloController < ApplicationController
  def index
    @message="Hello!"
    @count = 3
    @bonus ="Mensaje enviado por el controlador"
  end
end
