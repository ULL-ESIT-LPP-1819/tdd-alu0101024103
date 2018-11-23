Nodo=Struct.new(:value, :get_next, :get_prev)

class Listas
attr_reader :head

  def initialize(head,tail)
      @head,@tail=head,tail
      @size=0
  end


  def insert(other)
    if @size==0
      node_ins=Nodo.new(other,nil,nil)
      @head= node_ins
      @tail=@head
      else
        node_ins=Nodo.new(other,nil,nil)
        node_mas=@head
        node_menos=nil

        while node_mas != nil && node_ins[:value].imc()>=node_mas[:value].imc() do

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



    def to_s
      ptr=@head
      a = String.new
      while ptr != nil do
        a <<  ptr [:value].to_s << ','
        ptr=ptr[:get_next]
      end

      a
    end
end
