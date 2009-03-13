require 'java'
class RubyJasper
  attr_accessor :report

  include RubyJasperLib

  def self.compile_report
    input  = java.io.FileInputStream.new('/Users/ktrussell/rails_projects/railsapplication1/lib/ruby_report.jrxml')
    design = RubyJasperLib::JRXmlLoader.load(input)
    @report = RubyJasperLib::JasperCompileManager.compileReport(design)
  end

  def self.print_report params,data_source
    compile_report unless @report
    print = RubyJasperLib::JasperFillManager.fill_report(@report,{},data_source)
    RubyJasperLib::JasperExportManager.export_report_to_pdf_file( print, '/Users/ktrussell/Desktop/sample_file.pdf' )
  end

end