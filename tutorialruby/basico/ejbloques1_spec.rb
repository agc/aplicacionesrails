require_relative 'spec/spec_helper'

#require File.expand_path("../ejcadena1.rb", __FILE__)

  def ejecuta
    yield
  end

  describe "Operaciones con bloques" do

    it "Un bloque se puede pasar a un metodo" do

      (ejecuta {
        suma = 2 +2
        "La suma es #{suma}"
      }).should eql ("La suma es 4")
    end


  end
