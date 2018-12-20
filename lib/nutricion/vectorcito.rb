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
end
