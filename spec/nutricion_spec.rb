require 'spec_helper'

describe Nutricion do
  it 'has a version number' do
    expect(Nutricion::VERSION).not_to be nil
  end
end

  describe Etiqueta do
    before :each do
      @et1=Etiqueta.new('arroz',30.00, 10.00,200.00,70.00,30.00,4.00)
      @et2=Etiqueta.new('carne',30.00, 10.00,200.00,70.00,30.00,6.00)
      @et3=Etiqueta.new('pescado',30.00, 10.00,200.00,70.00,30.00,5.00)
  end

      it " Se almacena correctamente el nombre " do
        expect(@et1.get_nombre).to eq('arroz')
      end

      it " Se almacena correctamente las grasas " do
       expect(@et1.get_grasa).to eq(30.00)
      end

      it " Se almacena correctamente las grasas  saturadas" do
       expect(@et1.get_grasa_sat).to eq(10.00)
      end

      it " Se almacena correctamente los hidratos de carbono" do
       expect(@et1.get_hidratos).to eq(200.00)
      end

      it " Se almacena correctamente el azucar" do
       expect(@et1.get_azucar).to eq(70.00)
      end

      it " Se almacena correctamente las proteinas" do
       expect(@et1.get_proteinas).to eq(30.00)
      end

      it " Se almacena correctamente la sal" do
       expect(@et1.get_sal).to eq(4.00)
      end

      it "método de valor energético kcal" do
        expect(@et1.get_val_en_kcal).to eq(1214.0)
      end

      it "método de valor energético kj" do
        expect(@et1.get_val_en_kj).to eq(2488)
      end

      it "ingesta de referencia azucar"do
        expect(@et1.azucar_ir).to eq(77.77777777777779)
      end

      it "ingesta de referencia proteinas"do
        expect(@et1.proteinas_ir).to eq(60.0)
      end

      it "ingesta de referencia sal"do
        expect(@et1.sal_ir).to eq(66.66666666666666)
      end

      it "ingesta de referencia grasas"do
        expect(@et1.grasas_ir).to eq(42.857142857142854)
      end

      it "ingesta de referencia grasas_sat_ir"do
        expect(@et1.grasas_sat_ir).to eq(50.0)
      end

      it "ingesta de referencia val_en_kcal"do
        expect(@et1.ener_kcal_ir).to eq(60.699999999999996)
      end

      it "ingesta de referencia val_en_kj"do
        expect(@et1.ener_kj_ir).to eq(29.619047619047617)
      end

      it "ingesta de referencia hidratos"do
        expect(@et1.hidratos_ir).to eq( 76.92307692307693)
      end

      it "porcion grasa x gramos" do
        expect(@et1.get_grasa_por(30)).to eq(9)
      end

      it "porcion hidratos x gramos" do
        expect(@et1.get_hidratos_por(30)).to eq(60)
      end

      it "porcion sal x gramos" do
        expect(@et1.get_sal_por(30)).to eq(1.2)
      end

      it "porcion proteinas x gramos" do
        expect(@et1.get_proteinas_por(30)).to eq(9)
      end

      it "porcion val_energetico_kcal  gramos" do
        expect(@et1.get_val_en_kcal_por(30)).to eq(364.2)
      end

      it "porcion azucar x gramos" do
        expect(@et1.get_azucar_por(30)).to eq(21)
      end

      it "porcion grasas sat x gramos" do
        expect(@et1.get_grasa_sat_por(30)).to eq(3)
      end

      it "porcion val_energetico_kj x gramos" do
        expect(@et1.get_val_en_kj_por(30)).to eq(746.4)
      end

      it "ingesta por porcion de grasas"do
        expect(@et1.grasas_ir_por(30)).to eq(12.857142857142856)
      end

      it "ingesta por porcion de grasas sat"do
        expect(@et1.grasas_sat_ir_por(30)).to eq(15)
      end

      it "ingesta por porcion de proteinas"do
        expect(@et1.proteinas_ir_por(30)).to eq(18)
      end

      it "ingesta por porcion de sal"do
        expect(@et1.sal_ir_por(30)).to eq(19.999999999999996)
      end

      it "ingesta por porcion de azucar"do
        expect(@et1.azucar_ir_por(30)).to eq( 23.333333333333336)
      end

      it "ingesta por porcion de hidratos"do
        expect(@et1.hidratos_ir_por(30)).to eq(23.07692307692308)
      end

      it "ingesta por porcion de val ener por kcal"do
        expect(@et1.ener_kcal_ir_por(30)).to eq(18.209999999999997)
      end

      it "ingesta por porcion de ener por kj"do
        expect(@et1.ener_kj_ir_por(30)).to eq(8.885714285714286)
      end

      it "to_s"do
        expect(@et1.to_s).to eq("arroz")
      end

      it "pruebas del < de la etiqueta"do
      expect(@et1< @et2).to eq(true)
      end

      it "pruebas del > de la etiqueta "do
      expect(@et2> @et3).to eq(true)
      end

      it "pruebas del == de la etiqueta "do
      expect(@et1 == @et1).to eq(true)
      end

      it "pruebas del between de la etiqueta"do
      expect(@et3.between?(@et1,@et2)).to eq(true)
      end

      it "pruebas del <= de la etiqueta"do
      expect(@et2 <= @et3).to eq(false)
      end

      it "pruebas del >= de la etiqueta "do
      expect(@et1 >= @et2).to eq(false)
      end

    it "pruebas del <=> de la etiqueta "do
      expect(@et2 <=> @et1).to eq(1)
      expect(@et1 <=> @et2).to eq(-1)
      expect(@et1 <=> @et1).to eq(0)
  end

  end



  describe Listas do
    before :each do
      @primera = Listas.new(nil,nil)
      @array=Array[[1,2,3],[1,2,3],[1,2,3],[1,2,3]]
      @pacienteo2=Sobrepeso.new(1.50,100,20,1,80,40,@array,"juan","Gonzales",23423428,"Dos y cuarto",922624356,"obeso","reposo")
      @pacienteo1=Sobrepeso.new(1.60,80,20,1,80,40,@array,"pedro","Marquez",87987879,"Dos y cuarto",922624356,"obeso","reposo")
      @pacienteo3=Sobrepeso.new(1.85,163,20,1,80,40,@array,"brian","Santamaria",8978789,"Dos y cuarto",922624356,"obeso","reposo")
      @pacienteo4=Sobrepeso.new(1.80,162,20,1,80,40,@array,"Lucas","Rodriguez",76678989,"Dos y cuarto",922624356,"obeso","reposo")
      @pacienteo5=Sobrepeso.new(1.87,190,20,1,80,40,@array,"cristian","Perez",768768678,"Dos y cuarto",922624356,"obeso","reposo")

      @et1=Etiqueta.new('arroz',30.00, 10.00,200.00,70.00,30.00,4.00)
      @et2=Etiqueta.new('carne',30.00, 10.00,200.00,70.00,30.00,6.00)
      @et3=Etiqueta.new('limon',30.00, 10.00,200.00,70.00,30.00,5.00)
      @et4=Etiqueta.new('queso',30.00, 10.00,200.00,70.00,30.00,3.00)
      @et5=Etiqueta.new('pescado',30.00, 10.00,200.00,70.00,30.00,2.00)
    end

        it "prueba de insertar una sola persona " do
          expect(@primera.insert(@et2)).to eq(@et2)
        end

        it " prueba del insert para 5 personas y del to_s para 5 comprobar el imc " do
          expect(@primera.insert(@pacienteo2)).to eq(@pacienteo2)
          expect(@primera.insert(@pacienteo3)).to eq(@pacienteo3)
          expect(@primera.insert(@pacienteo1)).to eq(@pacienteo1)
          expect(@primera.insert(@pacienteo4)).to eq(@pacienteo4)
          expect(@primera.insert(@pacienteo5)).to eq(@pacienteo5)
          expect(@primera.to_s).to eq('pedro,juan,brian,Lucas,cristian,' )
        end

        it "prueba para comprobar el menor imc " do
          expect(@primera.insert(@pacienteo4)).to eq(@pacienteo4)
          expect(@primera.insert(@pacienteo2)).to eq(@pacienteo2)
          expect(@primera.insert(@pacienteo1)).to eq(@pacienteo1)
          expect(@primera.insert(@pacienteo3)).to eq(@pacienteo3)
          expect(@primera.insert(@pacienteo5)).to eq(@pacienteo5)
          expect(@primera.head[:value]).to eq(@pacienteo1)
        end



        it "pruebas para el collect,select,sort,max,min de personas"do
          expect(@primera.insert(@pacienteo4)).to eq(@pacienteo4)
          expect(@primera.insert(@pacienteo2)).to eq(@pacienteo2)
          expect(@primera.insert(@pacienteo1)).to eq(@pacienteo1)
          expect(@primera.insert(@pacienteo3)).to eq(@pacienteo3)
          expect(@primera.insert(@pacienteo5)).to eq(@pacienteo5)

          expect(@primera.collect{ |paciente| paciente.imc == 31.249999999999993}).to eq([true, false, false, false, false])
          expect(@primera.min.imc()).to eq(31.249999999999993)
          expect(@primera.max.imc()).to eq(54.333838542709245)
          expect(@primera.select{|persona| persona.imc == 31.249999999999993}).to eq([@pacienteo1])
          expect(@primera.sort).to eq([@pacienteo1,@pacienteo2,@pacienteo3,@pacienteo4,@pacienteo5])
       end

        it "pruebas para el collect,select,sort,max,min de etiquetas"do
          expect(@primera.insert(@et1)).to eq(@et1)
          expect(@primera.insert(@et2)).to eq(@et2)
          expect(@primera.insert(@et3)).to eq(@et3)
          expect(@primera.insert(@et4)).to eq(@et4)
          expect(@primera.insert(@et5)).to eq(@et5)

          expect(@primera.collect{|etiqueta| etiqueta.get_sal == 4.0 }).to eq([false, false, true, false, false])
          expect(@primera.min.get_sal()).to eq(2.00)
          expect(@primera.max.get_sal()).to eq(6.00)
          expect(@primera.select{|etiqueta| etiqueta.get_sal == 4.00}).to eq([@et1])
          expect(@primera.sort).to eq([@et5,@et4,@et1,@et3,@et2])
       end

  end


    describe Person do
      before :each do
    @persona1=Person.new("pedro","Marquez",87987879)
      end

      it "prueba del nombre, apellidos, y dni de la persona"do
      expect(@persona1.nombre).to eq("pedro")
      expect(@persona1.apellidos).to eq("Marquez")
      expect(@persona1.dni).to eq(87987879)
    end

    it "prueba de is_a y kind_of de una persona"do
        expect(@persona1.is_a?Sobrepeso).to eq(false)
        expect(@persona1.is_a?Paciente).to eq(false)
        expect(@persona1.is_a?Person).to eq(true)
        expect(@persona1.is_a?Object).to eq(true)
        expect(@persona1.is_a?BasicObject).to eq(true)

        expect(@persona1.kind_of?Sobrepeso).to eq(false)
        expect(@persona1.kind_of?Paciente).to eq(false)
        expect(@persona1.kind_of?Person).to eq(true)
        expect(@persona1.kind_of?Object).to eq(true)
        expect(@persona1.kind_of?BasicObject).to eq(true)



      end


          it "prueba de instance_of de una persona"do
              expect(@persona1.instance_of?Sobrepeso).to eq(false)
              expect(@persona1.instance_of?Paciente).to eq(false)
              expect(@persona1.instance_of?Person).to eq(true)
              expect(@persona1.instance_of?Object).to eq(false)
              expect(@persona1.instance_of?BasicObject).to eq(false)
          end

          it "prueba de .class de una persona" do
            expect(@persona1.class). to eq (Person)

          end

      end

      describe Paciente do
        before :each do
      @paciente1=Paciente.new("pedro","Marquez",87987879,"Dos y cuarto",922624356,"obeso")
        end

        it "Prueba de horario, telefono y consulta" do
            expect(@paciente1.horario).to eq("Dos y cuarto")
            expect(@paciente1.telefono).to eq(922624356)
            expect(@paciente1.consulta).to eq("obeso")
        end
        it "prueba de is_a y kind_of de un Paciente"do
            expect(@paciente1.is_a?Sobrepeso).to eq(false)
            expect(@paciente1.is_a?Paciente).to eq(true)
            expect(@paciente1.is_a?Person).to eq(true)
            expect(@paciente1.is_a?Object).to eq(true)
            expect(@paceinte1.is_a?BasicObject).to eq(true)

            expect(@paciente1.kind_of?Sobrepeso).to eq(false)
            expect(@paciente1.kind_of?Paciente).to eq(true)
            expect(@paciente1.kind_of?Person).to eq(true)
            expect(@paciente1.kind_of?Object).to eq(true)
            expect(@paceinte1.kind_of?BasicObject).to eq(true)
        end



        it "prueba de instance_of de un Paciente"do
            expect(@paciente1.instance_of?Sobrepeso).to eq(false)
            expect(@paciente1.instance_of?Paciente).to eq(true)
            expect(@paciente1.instance_of?Person).to eq(false)
            expect(@paciente1.instance_of?Object).to eq(false)
            expect(@paceinte1.instance_of?BasicObject).to eq(false)
        end

        it "prueba de .class de un Paciente" do
          expect(@paciente1.class). to eq (Paciente)
        end

      end


      describe Sobrepeso do
        before :each do
          @obeso1=Sobrepeso.new(1.60,80,20,1,80,40,@array,"pedro","Marquez",87987879,"Dos y cuarto",922624356,"obeso", "reposo")
          @obeso2=Sobrepeso.new(1.55,80,20,1,80,40,@array,"pedro","Marquez",87987879,"Dos y cuarto",922624356,"obeso","actividad ligera")
          @obeso3=Sobrepeso.new(1.50,80,20,1,80,40,@array,"pedro","Marquez",87987879,"Dos y cuarto",922624356,"obeso","actividad moderada")
        @obeso4=Sobrepeso.new(1.87,190,20,1,80,40,@array,"cristian","Perez",768768678,"Dos y cuarto",922624356,"obeso","reposo")
          @obeso5=Sobrepeso.new(1.67,56,20,0,80,40,@array,"pedro","Marquez",87987879,"Dos y cuarto",922624356,"obeso","reposo")

          @et1=Etiqueta.new('arroz',30.00, 10.00,200.00,70.00,30.00,4.00)
          @et2=Etiqueta.new('carne',30.00, 10.00,200.00,70.00,30.00,6.00)
          @et3=Etiqueta.new('limon',30.00, 10.00,200.00,70.00,30.00,5.00)
          @et4=Etiqueta.new('queso',30.00, 10.00,200.00,70.00,30.00,3.00)
          @et5=Etiqueta.new('pescado',30.00, 10.00,200.00,70.00,30.00,2.00)

          @menu1=Listas.new(nil,nil)
          @menu2=Listas.new(nil,nil)
          @menu3=Listas.new(nil,nil)
          @menu4=Listas.new(nil,nil)
          @menu5=Listas.new(nil,nil)



        end

        it "prueba para el imc,talla,peso,y edad del paciente"do
        expect(@obeso1.talla).to eq(1.60)
        expect(@obeso1.peso).to eq(80)
        expect(@obeso1.edad).to eq(20)
        expect(@obeso1.sexo).to eq(1)
        expect(@obeso1.imc). to eq(31.249999999999993)
      end

      it "prueba de is_a y kind_of de un obeso"do
          expect(@obeso1.is_a?Sobrepeso).to eq(true)
          expect(@obeso1.is_a?Paciente).to eq(true)
          expect(@obeso1.is_a?Person).to eq(true)
          expect(@obeso1.is_a?Object).to eq(true)
          expect(@obeso1.is_a?BasicObject).to eq(true)

          expect(@obeso1.kind_of?Sobrepeso).to eq(true)
          expect(@obeso1.kind_of?Paciente).to eq(true)
          expect(@obeso1.kind_of?Person).to eq(true)
          expect(@obeso1.kind_of?Object).to eq(true)
          expect(@obeso1.kind_of?BasicObject).to eq(true)

      end

      it"pureba de respond to" do
          expect(@obeso1.respond_to?:imc).to eq(true)
          expect(@obeso1.respond_to?:talla).to eq(true)
          expect(@obeso1.respond_to?:peso).to eq(true)
          expect(@obeso1.respond_to?:edad).to eq(true)
          expect(@obeso1.respond_to?:sexo).to eq(true)
      end

      it "prueba de instance_of de un obeso"do
          expect(@obeso1.instance_of?Sobrepeso).to eq(true)
          expect(@obeso1.instance_of?Paciente).to eq(false)
          expect(@obeso1.instance_of?Person).to eq(false)
          expect(@obeso1.instance_of?Object).to eq(false)
          expect(@obeso1.instance_of?BasicObject).to eq(false)
      end

      it "prueba de .class de un obeso" do
        expect(@obeso1.class). to eq (Sobrepeso)
      end

      it "pruebas del < de la información nutricional"do
      expect(@obeso1 < @obeso2).to eq(true)
      end

      it "pruebas del > de la información nutricional"do
      expect(@obeso1 > @obeso2).to eq(false)
      end

      it "pruebas del == de la información nutricional"do
      expect(@obeso1 == @obeso2).to eq(false)
      end

      it "pruebas del between de la información nutricional"do
      expect(@obeso2.between?(@obeso1,@obeso3)).to eq(true)
      end

      it "pruebas del <= de la información nutricional"do
      expect(@obeso1 <= @obeso2).to eq(true)
      end

      it "pruebas del >= de la información nutricional"do
      expect(@obeso1 >= @obeso1).to eq(true)
      end

      it "pruebas del <=> de la información nutricional"do
        expect(@obeso2 <=> @obeso1).to eq(1)
        expect(@obeso1 <=> @obeso2).to eq(-1)
        expect(@obeso1 <=> @obeso1).to eq(0)
      end

      it "collect" do
        expect(@menu1.insert(@et1)).to eq(@et1)
        expect(@menu1.insert(@et2)).to eq(@et2)
        expect(@menu1.map{|i| i.get_sal()}).to eq([4.0,6.0])
        expect(@menu1.collect{|i| i.get_sal()}).to eq([4.0,6.0])
      end

      it "zip" do
        expect(@menu1.insert(@et3)).to eq(@et3)

        expect(@menu2.insert(@et4)).to eq(@et4)
        expect(@menu1.zip(@menu2)).to eq([[@et3,@et4]])
      end

      it "reduce" do
        expect(@menu1.insert(@et3)).to eq(@et3)
        expect(@menu1.insert(@et4)).to eq(@et4)
        expect(@menu1.reduce(0) {|sum,n| (sum + n.get_sal())}).to eq(8.0)
      end

      it "menu 1 paciente 1"do
        expect(@menu1.insert(@et3)).to eq(@et3)
        expect(@menu1.insert(@et4)).to eq(@et4)
        expect(@menu1.insert(@et5)).to eq(@et5)

          expect(@menu1.get_value.get_val_en_kcal()).to eq(1202.0)
          expect(@menu1.reduce(0) {|sum, num| (sum + num.get_val_en_kcal()).round(2) } ).to eq(3630.0)
          expect((@obeso1.gasto_energetico_total()).round(2)).to eq(786.5)

          #10% de margen
          total= (@obeso1.gasto_energetico_total())
          kcal_menu1 = @menu1.reduce(0) {|sum, num| (sum + num.get_val_en_kcal()).round(2) }
          ab=(kcal_menu1*0.9).round(2)
          ar=(kcal_menu1*1.1).round(2)

          expect(total.between?(ab,ar)).to eq(false)

      end

      it "menu 2 paciente 2"do
        expect(@menu2.insert(@et1)).to eq(@et1)


          expect(@menu2.get_value.get_val_en_kcal()).to eq(1214.0)
          expect(@menu2.reduce(0) {|sum, num| (sum + num.get_val_en_kcal()).round(2) } ).to eq(1214.0)
          expect((@obeso2.gasto_energetico_total()).round(2)).to eq(1172.09)

          #10% de margen
          total= (@obeso2.gasto_energetico_total())
          kcal_menu2 = @menu2.reduce(0) {|sum, num| (sum + num.get_val_en_kcal()).round(2) }
          ab=(kcal_menu2*0.9).round(2)
          ar=(kcal_menu2*1.1).round(2)

          expect(total.between?(ab,ar)).to eq(true)

      end

      it "menu 3 paciente 3"do
        expect(@menu3.insert(@et1)).to eq(@et1)
        expect(@menu3.insert(@et3)).to eq(@et3)
        expect(@menu3.insert(@et5)).to eq(@et5)

          expect(@menu3.get_value.get_val_en_kcal()).to eq(1202.0)
          expect(@menu3.reduce(0) {|sum, num| (sum + num.get_val_en_kcal()).round(2) } ).to eq(3636.0)
          expect((@obeso3.gasto_energetico_total()).round(2)).to eq(978.69)

          #10% de margen
          total= (@obeso3.gasto_energetico_total())
          kcal_menu3 = @menu3.reduce(0) {|sum, num| (sum + num.get_val_en_kcal()).round(2) }
          ab=(kcal_menu3*0.9).round(2)
          ar=(kcal_menu3*1.1).round(2)

          expect(total.between?(ab,ar)).to eq(false)

      end

      it "menu 4 paciente 4"do
        expect(@menu4.insert(@et2)).to eq(@et2)
        expect(@menu4.insert(@et4)).to eq(@et4)
        expect(@menu4.insert(@et5)).to eq(@et5)

          expect(@menu4.get_value.get_val_en_kcal()).to eq(1202.0)
          expect(@menu4.reduce(0) {|sum, num| (sum + num.get_val_en_kcal()).round(2) } ).to eq(3636.0)
          expect((@obeso4.gasto_energetico_total()).round(2)).to eq(1998.36)

          #10% de margen
          total= (@obeso4.gasto_energetico_total())
          kcal_menu4 = @menu4.reduce(0) {|sum, num| (sum + num.get_val_en_kcal()).round(2) }
          ab=(kcal_menu4*0.9).round(2)
          ar=(kcal_menu4*1.1).round(2)

          expect(total.between?(ab,ar)).to eq(false)

      end


      it "menu 5 paciente 5"do
        expect(@menu5.insert(@et1)).to eq(@et1)
        expect(@menu5.insert(@et2)).to eq(@et2)
        expect(@menu5.insert(@et4)).to eq(@et4)

          expect(@menu5.get_value.get_val_en_kcal()).to eq(1208.0)
          expect(@menu5.reduce(0) {|sum, num| (sum + num.get_val_en_kcal()).round(2) } ).to eq(3648.0)
          expect((@obeso5.gasto_energetico_total()).round(2)).to eq(340.38)

          #10% de margen
          total= (@obeso5.gasto_energetico_total())
          kcal_menu5 = @menu5.reduce(0) {|sum, num| (sum + num.get_val_en_kcal()).round(2) }
          ab=(kcal_menu5*0.9).round(2)
          ar=(kcal_menu5*1.1).round(2)

          expect(total.between?(ab,ar)).to eq(false)

      end

    end
