require 'test_helper'

class RubyJasperTest < ActiveSupport::TestCase
  
  test "ruby_jasper can compile report" do
    assert rjasper = RubyJasper.compile_report
  end

  test "ruby_jasper can print report" do
    Record.create( :name => 'Kevin' )
    Record.create( :name => 'Lindy' )
    Record.create( :name => 'Lesley' )
    ar_ds = RubyMapDataSource.new( Record.find(:all) )
    RubyJasper.print_report( {}, ar_ds )
    assert true
  end
  
end
