class Array

  #algoritmo de seleccion(recorro el vector con x para que me de la posicion
  # y voy ordenandolo en cada iteración con y, en el que esta con el siguiente)
  def ord_for_array

    @au= self

      for x in 0..self.length-1
        for y in 0..length-2-x
          if ( @au[y] > @au[y+1] )
            @au[y], @au[y+1] = @au[y+1], @au[y]
          end
        end
      end
      return @au
  end

  #pongo x en el primer elemento del vector, despues poongo y en el elemento siguiente,
  #si es mayor  el primero cambio los elementos, y aumento los contadores
    def ord_each_array
      @au = self
    			cont=0
            		@au.each do |x|
                			var = x
    				           i = cont
    				           cont2=cont + 1

                			@au[cont2..@au.length-1].each do |y|
                    			if var > y
                        				var = y
                        				i = cont2
                    			end
                    			cont2+=1
                			end

                		@au[i] = x
                		@au[cont] = var
                		cont+=1
            		end

            	 @au
    	end
end
