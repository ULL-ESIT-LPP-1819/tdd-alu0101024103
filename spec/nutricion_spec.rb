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


  end
