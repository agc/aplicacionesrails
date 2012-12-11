require 'ejcadena1'
 
  describe "Ejemplos basicos con strings" do
    it "se ha definido una descripcion" do
      
      EjCadena1.descripcion.should eq("Ejemplos basicos de cadenas")
      
    end
    
    
    it "debe decir 'Hola Mundo' cuando recibe el mensaje saludo() " do
      ejemplo1 = EjCadena1.new
      saludo = ejemplo1.saludo
      saludo.should == "Hola mundo"
    end
  end