
#clase con los valores nutricionales de una etiqueta, asi como las kcal en kj y kcal
class Etiqueta
include Comparable


  def initialize(nombre, grasas, grasas_saturadas,hidratos,azucar,proteinas,sal)
  @nombre,@grasas,@grasas_saturadas,@hidratos,@azucar,@proteinas,@sal = nombre, grasas, grasas_saturadas,hidratos,azucar,proteinas,sal
  end

  def <=>(anOther)
    get_val_en_kcal()<=> anOther.get_val_en_kcal()
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
      (@grasas * x)/100.00
    end

    def get_grasa_sat_por(x)
      (@grasas_saturadas * x)/100.00
    end

    def get_hidratos_por(x)
      (@hidratos * x)/100.00
    end

    def get_azucar_por(x)
      (@azucar * x) /100.00
    end

    def get_proteinas_por(x)
      (@proteinas * x) /100.00
    end

    def get_sal_por(x)
      (@sal * x) /100.00
    end


    def get_val_en_kj_por(x)

       (@@val_kj * x )/100.00

    end

    def get_val_en_kcal_por(x)

      (@@val_kcal * x) /100.00
    end

    def azucar_ir_por(x)
      (  azucar_ir() *x )/100
      end

    def proteinas_ir_por(x)
       (proteinas_ir()* x)/100
       end

    def sal_ir_por(x)
      (sal_ir()* x)/100
      end

    def hidratos_ir_por(x)
    ( hidratos_ir()*x )/100
      end

      def ener_kcal_ir_por(x)
        (ener_kcal_ir * x)/100
        end

       def ener_kj_ir_por(x)
       (ener_kj_ir()*x)/100
       end

        def grasas_ir_por(x)
        (grasas_ir*x)/100
        end

      def grasas_sat_ir_por(x)
      (grasas_sat_ir*x)/100
      end

    def formato_etiqueta()
    puts "---------------------------------------------------------------------------------------------------------"
    puts "                                       Etiqueta"
    puts get_nombre
    puts "---------------------------------------------------------------------------------------------------------"
    puts "                  |   Por 100 g |      IR       |     Por porcion de      g|       IR por porcion       |"
    printf" %70d\n",30
    puts "---------------------------------------------------------------------------------------------------------"
    puts
    puts " Valor energetico |              |              |                           |                           |"
  printf "%25d,%d %8d,%6d%18f%12f%15f,%12f\n" ,get_val_en_kcal,get_val_en_kj,ener_kcal_ir,ener_kj_ir,get_val_en_kcal_por(30),get_val_en_kj_por(30),ener_kcal_ir_por(30),ener_kj_ir_por(30)
    puts "---------------------------------------------------------------------------------------------------------"
    puts "  Grasa           |              |              |                           |                           |"
    printf "%25d%20f%20f%25f \n" ,get_grasa,grasas_ir,get_grasa_por(30),grasas_ir_por(30)
    puts "---------------------------------------------------------------------------------------------------------"
    puts " Grasas saturadas |              |              |                           |                           |"
    printf "%25d%20f%20f%25f\n" ,get_grasa_sat,grasas_sat_ir,get_grasa_sat_por(30),grasas_sat_ir_por(30)
    puts "---------------------------------------------------------------------------------------------------------"
    puts " Hidatos          |              |              |                           |                           |"
    printf "%25d%20f%20f%25f\n" ,get_hidratos,hidratos_ir,get_hidratos_por(30),hidratos_ir_por(30)
    puts "---------------------------------------------------------------------------------------------------------"
    puts " Azúcares          |              |              |                           |                           |"
    printf "%25d%20f%20f%25f \n" ,get_azucar,azucar_ir,get_azucar_por(30),azucar_ir_por(30)
    puts "---------------------------------------------------------------------------------------------------------"
    puts " Proteinas         |              |              |                           |                           |"
    printf "%25d%20f%20f%25f\n" ,get_proteinas,proteinas_ir,get_proteinas_por(30),proteinas_ir_por(30)
    puts "---------------------------------------------------------------------------------------------------------"
    puts " Sal               |              |              |                           |                           |"
  printf "%25d%20f%20f%25f\n" ,get_sal,sal_ir,get_sal_por(30),sal_ir_por(30)
    puts "---------------------------------------------------------------------------------------------------------"

    end

    def to_s
      @nombre
    end
end
