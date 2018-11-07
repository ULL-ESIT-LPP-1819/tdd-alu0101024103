module Nutricion
  VERSION = "0.1.0"
end

  class Etiqueta


    def initialize(nombre, grasas, grasas_saturadas,hidratos,azucar,proteinas,sal)
    @nombre,@grasas,@grasas_saturadas,@hidratos,@azucar,@proteinas,@sal = nombre, grasas, grasas_saturadas,hidratos,azucar,proteinas,sal
    end

    def get_nombre()
      @nombre
    end

    def get_grasa()
      @grasas
    end

    def get_grasa_sat()
      @grasas_saturadas
    end

    def get_hidratos()
      @hidratos
    end

    def get_azucar()
      @azucar
    end

  end
