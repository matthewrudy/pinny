# encoding: UTF-8

require 'test_helper'
require 'pinny'

class PinnyTest < ActiveSupport::TestCase

  test "to_pinyin - simple" do
    assert_equal "Ní hǎo", Pinny.to_pinyin("Ni2 hao3")
  end

  test "to_pinyin - capital A" do
    assert_equal "Ai", Pinny.to_pinyin("Ai4")
  end

end
