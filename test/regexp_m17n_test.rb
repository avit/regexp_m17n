# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
      str = '.'.encode(enc) rescue '.'.force_encoding(enc)
      assert(RegexpM17N.non_empty?(str))
    end
  end
end
