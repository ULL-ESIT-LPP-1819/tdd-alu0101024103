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

    def get_proteinas()
      @proteinas
    end

    def get_sal()
      @sal
    end

    def formato_etiqueta
    puts "---------------------------------------------------------------------------------------------------------"
     puts get_nombre
    puts "---------------------------------------------------------------------------------------------------------"
    puts "                  |   Por 100 g |      IR       |     Por porcion de x g   |       IR por porcion       |"
    puts "---------------------------------------------------------------------------------------------------------"
    puts "                  |              |              |                           |                           |"
    puts "---------------------------------------------------------------------------------------------------------"
    puts "                  |              |              |                           |                           |"
    puts "---------------------------------------------------------------------------------------------------------"
    puts "                  |              |              |                           |                           |"
    puts "---------------------------------------------------------------------------------------------------------"
    puts "                  |              |              |                           |                           |"
    puts "---------------------------------------------------------------------------------------------------------"
    puts "                  |              |              |                           |                           |"
    puts "---------------------------------------------------------------------------------------------------------"
    puts "                  |              |              |                           |                           |"
    puts "---------------------------------------------------------------------------------------------------------"
    puts "                  |              |              |                           |                           |"
    puts "---------------------------------------------------------------------------------------------------------"
    end

  end
