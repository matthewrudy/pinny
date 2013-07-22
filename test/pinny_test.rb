# encoding: UTF-8

require 'test_helper'
require 'pinny'

class PinnyTest < Test::Unit::TestCase

  def test_to_pinyin__simple
    assert_equal "Ní hǎo", Pinny.to_pinyin("Ni2 hao3")
  end

  def test_to_pinyin__capital_A
    assert_equal "Ai", Pinny.to_pinyin("Ai4")
  end

end
