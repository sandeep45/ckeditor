module Ckeditor
  class CustomFormBuilder #< Formtastic::SemanticFormBuilder
    # super class commented and include added by SANDEEP
    puts "change by sandeep arneja"
    include Formtastic::Inputs::Base
    
    private

    def ckeditor_input(method, options)
      html_options = options.delete(:input_html) || {}
      self.label(method, options_for_label(options)) <<
      self.send(:ckeditor_textarea, sanitized_object_name, method, html_options)
    end

  end
end
