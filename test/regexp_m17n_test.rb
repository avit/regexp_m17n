# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Test
  Encoding.list.each do |enc|
    define_method "test_non_empty_#{enc.name.downcase.gsub(/[^a-z0-9]/, '_')}" do
      assert(RegexpM17N.non_empty?('.'.encode(enc)))
    end
  end
end
