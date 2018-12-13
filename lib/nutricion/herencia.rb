
class Person
  attr_reader :nombre,:apellidos,:dni

  def initialize(nombre,apellidos,dni)
    @nombre,@apellidos,@dni=nombre,apellidos,dni
  end
  def to_s()
     @nombre
  end

end


 #herencia
class Paciente<Person


  attr_reader :horario,:telefono,:consulta

  def initialize(nombre,apellidos,dni,horario,telefono,consulta)
     @horario,@telefono,@consulta=horario,telefono,consulta
     super(nombre,apellidos,dni)
  end

end


 #herencia, contiene los metodos nutricionales y el modulo comparable
class Sobrepeso<Paciente
  include Comparable
  attr_reader :talla,:peso,:edad,:sexo

    def initialize(talla,peso,edad,sexo,cintura,cadera,array,nombre,apellidos,dni,horario,telefono,consulta,actividad)
      @talla,@peso,@edad,@sexo,@cintura,@cadera,@array,@actividad=talla,peso,edad,sexo,cintura,cadera,array,actividad
      super(nombre,apellidos,dni,horario,telefono,consulta)
    end
#necesario para el modulo comparable
    def <=> (anOther)
        imc()<=> anOther.imc()
    end

    def imc()
      @masa = (@peso/(@talla * @talla))
    end

    def grasa()
      @grasita= 1.2 * @masa + 0.23 * @edad - 10.8 * @sexo -5.8
    end

    def rcc()
      @val_rcc=@cintura/@cadera

    end

    def plieges()
      @vector=Array.new(4)
      @vector[0]=(@array[0][0]+@array[0][1]+@array[0][2])/3
      @vector[1]=(@array[1][0]+@array[1][1]+@array[1][2])/3
      @vector[2]=(@array[2][0]+@array[2][1]+@array[2][2])/3
      @vector[3]=(@array[3][0]+@array[3][1]+@array[3][2])/3
      return @vector
    end

    def peso_teorico_ideal()
      return  ((@talla - 150.0) * 0.75 + 50.0)
    end

    def gasto_energetico_basal ()

      if (@sexo == 0)
      (( 10 * @peso) + (6.25 * @talla) - (5 * @edad) - 161)
    else
      ((10 * @peso) + (6.25 * @talla) - (5 * @edad) + 5)
    end
    end

    def efecto_termogeno()
      ( gasto_energetico_basal() * 0.10)
      end

    def gasto_actividad_fisica()

      if (@actividad == "reposo")
        @factor_actividad_fisica = 0.0
      end
      if  (@actividad == "actividad ligera")
        @factor_actividad_fisica= 0.12
      end
      if (@actividad == "actividad moderada")
        @factor_actividad_fisica= 0.27
      end
      if (@actividad == "actividad ligera")
        @factor_actividad_fisica= 0.54
      end
        (gasto_energetico_basal() * @factor_actividad_fisica)
    end


    def gasto_energetico_total()
        (gasto_energetico_basal + efecto_termogeno() + gasto_actividad_fisica())
    end


end
