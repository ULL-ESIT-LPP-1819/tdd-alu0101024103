Nodo=Struct.new(:value, :get_next, :get_prev)

#Clase de una lista que contiene el metodo insertar, el to_s,  yel each
class Listas
   include Enumerable
   attr_reader :head

  def initialize(head,tail)
      @head,@tail=head,tail
      @size=0
  end

#necesario para el modulo enumerable
  def each(&block)
    ptr=@head
    while ptr != nil do
      yield (ptr[:value])
      ptr=ptr[:get_next]
    end
  end

#inserta los elementos entre el nodo mas y el nodo menos
  def insert(other)
    if @size==0
      node_ins=Nodo.new(other,nil,nil)
      @head= node_ins
      @tail=@head
      else
        node_ins=Nodo.new(other,nil,nil)
        node_mas=@head
        node_menos=nil

        while node_mas != nil && node_ins[:value]>=node_mas[:value] do

          node_menos=node_mas
          node_mas=node_mas[:get_next]

        end

        if node_mas == @head
          @head=node_ins

      elsif node_mas ==nil
        @tail=node_ins
      end
        node_ins[:get_prev]=node_menos
        node_ins[:get_next]=node_mas

      if node_menos != nil
        node_menos[:get_next]=node_ins
      end
      if node_mas != nil
        node_mas[:get_prev]=node_ins
      end

      end
      @size+=1;
      node_ins[:value]
  end

  def get_value
		@head[:value]
	end

     #Puntero que muestra un string con el resultado.
    def to_s
      ptr=@head
      a = String.new
      while ptr != nil do
        a <<  ptr [:value].to_s << ','
        ptr=ptr[:get_next]
      end
      a
    end

    #algoritmo de seleccion(recorro el vector con x para que me de la posicion
    # y voy ordenandolo en cada iteración con y, en el que esta con el siguiente)
        def ord_for_lista
        @au = self.map { |x| x }

        for x in 0..@au.length-1
          for y in 0..@au.length-2-x
            if ( @au[y] > @au[y+1] )
              @au[y], @au[y+1] = @au[y+1], @au[y]
            end
          end
        end
        return @au
      end

end
