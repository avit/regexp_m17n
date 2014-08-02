module RegexpM17N
  def self.non_empty?(str)
    str =~ /^.+$/
  rescue Encoding::CompatibilityError
    str = str.dup
    begin
      str.encode!(Encoding::UTF_8)
    rescue Encoding::ConverterNotFoundError
      str.force_encoding(Encoding::BINARY)
    end
    retry
  end
end
