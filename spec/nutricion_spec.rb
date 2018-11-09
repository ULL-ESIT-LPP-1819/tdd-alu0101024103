require 'spec_helper'

describe Nutricion do
  it 'has a version number' do
    expect(Nutricion::VERSION).not_to be nil
  end
end

  describe Etiqueta do
    before :each do
    @et1=Etiqueta.new('arroz',30.00, 10.00,200.00,70.00,30.00,4.00)
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
        expect(@et1.grasas_ir_por(30)).to eq(12.857142)
      end

      it "ingesta por porcion de grasas sat"do
        expect(@et1.grasas_sat_ir_por(30)).to eq(15)
      end

      it "ingesta por porcion de proteinas"do
        expect(@et1.proteinas_ir_por(30)).to eq(18)
      end

      it "ingesta por porcion de sal"do
        expect(@et1.sal_ir_por(30)).to eq(19.999999)
      end

      it "ingesta por porcion de azucar"do
        expect(@et1.azucar_ir_por(30)).to eq(23.3333)
      end

      it "ingesta por porcion de hidratos"do
        expect(@et1.hidratos_ir_por(30)).to eq(23.0769)
      end

      it "ingesta por porcion de val ener por kcal"do
        expect(@et1.ener_kcal_ir_por(30)).to eq(18.20999999)
      end

      it "ingesta por porcion de ener por kj"do
        expect(@et1.ener_kj_ir_por(30)).to eq(8.7)
      end





  end

  Etiqueta.new('arroz',30.00, 10.00,200.00,70.00,30.00,4.00).formato_etiqueta
