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

    def get_val_en_kj()

      grasas_kj= @grasas * 37
      proteinas_kj= @proteinas * 17
      sal_kj=@sal * 17
      hidratos_kj= @hidratos * 4

       val_kj = grasas_kj + proteinas_kj + sal_kj + hidratos_kj

    end

    def get_val_en_kcal()

      grasas_kcal= @grasas * 9
      proteinas_kcal= @proteinas * 4
      sal_kcal=@sal * 6
      hidratos_kcal= @hidratos * 4

      val_kcal = grasas_kcal + proteinas_kcal + sal_kcal + hidratos_kcal

    end

  end
