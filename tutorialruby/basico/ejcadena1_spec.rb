 require_relative "ejcadena1.rb"
 require_relative 'spec/spec_helper'

#require File.expand_path("../ejcadena1.rb", __FILE__)


 
  describe "Operaciones basicas con Strings" do

    subject {"Hola mundo"}
    its(:length) {should == 10}

    it "Las cadenas se pueden concatenar" do
      
      subject.should eq("Hola"+" mundo")
      subject.should eq("Hola"<<" mundo")
      
    end

    it "Las cadenas se pueden multiplicar" do

      producto="Hola"*3
      producto.should =="HolaHolaHola"
    end

    it "Se puede insertar la salida de un comando shell" do
      salida=`ruby --version`
      salida.should match(/ruby 1.9.3/)
    end

    it "Se puede realizar string substitution" do

      persona="Juan"
      "Hola #{persona}".should eql "Hola Juan"
      "La suma es #{2+2}".should match /4/

    end

    it "Las cadenas se pueden formatear" do
      saludo ="Hola %s"

      ("Hola %s"%"Mundo").should =="Hola Mundo"
      ("%s %s"%["Hola","Mundo"]).should =="Hola Mundo"

    end

    it "Se puede evaluar una cadena" do
      suma = eval "sumando=3;2+sumando"
      suma.should == 5
    end
    
    
    it "debe decir 'Hola Mundo' cuando recibe el mensaje saludo() " do
      ejemplo1 = EjCadena1.new
      saludo = ejemplo1.saludo
      saludo.should == "Hola mundo"
    end
  end