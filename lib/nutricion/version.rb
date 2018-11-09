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

       @@val_kj = grasas_kj + proteinas_kj + sal_kj + hidratos_kj

    end

    def get_val_en_kcal()

      grasas_kcal= @grasas * 9
      proteinas_kcal= @proteinas * 4
      sal_kcal=@sal * 6
      hidratos_kcal= @hidratos * 4

      @@val_kcal = grasas_kcal + proteinas_kcal + sal_kcal + hidratos_kcal

    end

    def azucar_ir()
      a_ir= (@azucar / 90)*100
      end

    def proteinas_ir()
       pr_ir=(@proteinas/50)*100
       end

    def sal_ir()
      s_ir= (@sal/6)*100
      end

    def hidratos_ir()
      h_ir= (@hidratos/260)*100
      end

      def ener_kcal_ir()
        val_kcal_ir=(@@val_kcal/2000.00)*100
        end

       def ener_kj_ir()
       val_kj_ir=(@@val_kj/8400.00)*100
       end

        def grasas_ir()
        grasita_ir=(@grasas/70)*100
        end

      def grasas_sat_ir()
      gras_sat_ir=(@grasas_saturadas/20)*100
      end

      def get_grasa_por(x)
        (@grasas * x)/100
      end

      def get_grasa_sat_por(x)
        (@grasas_saturadas * x)/100
      end

      def get_hidratos_por(x)
        (@hidratos * x)/100
      end

      def get_azucar_por(x)
        (@azucar * x) /100
      end

      def get_proteinas_por(x)
        (@proteinas * x) /100
      end

      def get_sal_por(x)
        (@sal * x) /100
      end


      def get_val_en_kj_por(x)

         (@@val_kj * x )/100

      end

      def get_val_en_kcal_por(x)

        (@@val_kcal * x) /100
      end





      def formato_etiqueta()
      puts "---------------------------------------------------------------------------------------------------------"
      puts "                                       Etiqueta"
      puts get_nombre
      puts "---------------------------------------------------------------------------------------------------------"
      puts "                  |   Por 100 g |      IR       |     Por porcion de x g   |       IR por porcion       |"
      puts "---------------------------------------------------------------------------------------------------------"
      puts
      puts " Valor energetico |              |              |                           |                           |"
    printf "%25d,%d %8d,%6d\n" ,get_val_en_kcal,get_val_en_kj,ener_kcal_ir,ener_kj_ir
      puts "---------------------------------------------------------------------------------------------------------"
      puts "  Grasa           |              |              |                           |                           |"
      printf "%25d%20f \n" ,get_grasa,grasas_ir
      puts "---------------------------------------------------------------------------------------------------------"
      puts " Grasas saturadas |              |              |                           |                           |"
      printf "%25d%20f \n" ,get_grasa_sat,grasas_sat_ir
      puts "---------------------------------------------------------------------------------------------------------"
      puts " Hidatos          |              |              |                           |                           |"
      printf "%25d%20f \n" ,get_hidratos,hidratos_ir
      puts "---------------------------------------------------------------------------------------------------------"
      puts " Azúcares          |              |              |                           |                           |"
      printf "%25d%20f \n" ,get_azucar,azucar_ir
      puts "---------------------------------------------------------------------------------------------------------"
      puts " Proteinas         |              |              |                           |                           |"
      printf "%25d%20f \n" ,get_proteinas,proteinas_ir
      puts "---------------------------------------------------------------------------------------------------------"
      puts " Sal               |              |              |                           |                           |"
    printf "%25d%20f \n" ,get_sal,sal_ir
      puts "---------------------------------------------------------------------------------------------------------"
      end

end
