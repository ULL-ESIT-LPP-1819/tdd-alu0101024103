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

  end
