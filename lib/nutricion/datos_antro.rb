class Persona
  attr_reader :talla,:peso,:edad,:sexo,:masa

    def initialize(talla,peso,edad,sexo,cintura,cadera,array)
      @talla,@peso,@edad,@sexo,@cintura,@cadera,@array=talla,peso,edad,sexo,cintura,cadera,array

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
end
