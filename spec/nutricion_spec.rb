require 'spec_helper'

describe Nutricion do
  it 'has a version number' do
    expect(Nutricion::VERSION).not_to be nil
  end
end

  describe Etiqueta do
    before :each do
    @et1=Etiqueta.new('arroz',45, 50,200,150,300,30)
  end

    it " Se almacena correctamente el nombre " do
      expect(@et1.get_nombre).to eq('arroz')
    end


      it " Se almacena correctamente las grasas " do
       expect(@et1.get_grasa).to eq(45)
      end

      it " Se almacena correctamente las grasas  saturadas" do
       expect(@et1.get_grasa_sat).to eq(50)
      end

      it " Se almacena correctamente los hidratos de carbono" do
       expect(@et1.get_hidratos).to eq(200)
      end

      it " Se almacena correctamente el azucar" do
       expect(@et1.get_azucar).to eq(150)
      end

      it " Se almacena correctamente las proteinas" do
       expect(@et1.get_proteinas).to eq(300)
      end

      it " Se almacena correctamente la sal" do
       expect(@et1.get_sal).to eq(30)
      end

      it "método de valor energético kcal" do
        expect(@et1.get_val_en_kcal).to eq(2585)
      end

      it "método de valor energético kj" do
        expect(@et1.get_val_en_kj).to eq(8075)
      end

      it "ingesta de referencia azucar"do
        expect(@et1.azucar_ir).to eq(1.6)
      end

      it "ingesta de referencia proteinas"do
      expect(@et1.proteinas_ir).to eq(6)
      end

      it "ingesta de referencia sal"do
      expect(@et1.sal_ir).to eq(5)
      end

      it "ingesta de referencia grasas"do
      expect(@et1.grasas_ir).to eq(0.64)
      end

      it "ingesta de referencia grasas_sat_ir"do
      expect(@et1.grasas_sat_ir).to eq(2.5)
      end

      it "ingesta de referencia val_en_kcal"do
      expect(@et1.val_kcal_ir).to eq(1.29)
      end

      it "ingesta de referencia val_en_kj"do
      expect(@et1.val_kj_ir).to eq(0.96)
      end

      it "ingesta de referencia hidratos"do
      expect(@et1.hidratos_ir).to eq(0.76)
      end

  end
