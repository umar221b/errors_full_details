module ActiveModel
  class Errors
    def full_details
      details.each_with_object([]) do |(attr, error_arr), errors|
        error_arr.each do |error|
          message = full_message(attr, error[:error])
          code = error.key?(:code) ? error[:code].to_s : '0'
          errors << { message: message, code: code }
        end
      end
    end
  end
end
