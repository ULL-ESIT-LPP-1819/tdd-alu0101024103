require 'spec_helper'

describe Nutricion do
  it 'has a version number' do
    expect(Nutricion::VERSION).not_to be nil
  end

  describe Etiqueta do
    et1=Etiqueta.new('arroz',45, 50,200,150,300,30)
  end
end
