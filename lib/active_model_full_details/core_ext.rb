module ActiveModel
  class Errors
    def full_details
      details.each_with_object([]) do |(attr, error_arr), errors|
        attr_name = attr.to_s.humanize
        error_arr.each do |error|
          message = (attr == :base ? '' : "#{attr_name} ") + error[:error]
          code = error.key?(:code) ? error[:code].to_s : '0'
          errors << { message: message, code: code }
        end
      end
    end
  end
end
