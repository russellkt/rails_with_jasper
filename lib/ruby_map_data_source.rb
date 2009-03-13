require 'java'

class RubyMapDataSource
  include RubyJasperLib

  def initialize data=[]
    @data  = data
    @index = -1
  end

  def next
    @index += 1
    @index < @data.size
  end

  def get_field_value field
    begin
      @data[@index].send(field.name).to_s
    rescue
    end
  end

  def sub_data_source sub_collection
    return RubyMapDataSource.new( @data[@index].send(sub) )
  end
end
