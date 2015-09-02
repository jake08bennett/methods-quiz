require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	# TODO - write tests here

	def test_has_teen
    assert_equal true, @m.has_teen(14, 12, 10)
    assert_equal true, @m.has_teen(9, 12, 15)
    assert_equal true, @m.has_teen(1, 13, 10)
    assert_equal true, @m.has_teen(19, 12, 10)
  end

  def test_not_string
    assert_equal "not yo", @m.not_string("yo")
    assert_equal "not yaught", @m.not_string("not yaught")
  end

  def test_icy_hot?
		assert_equal true, @m.icy_hot?(-43, 169)
		assert_equal false, @m.icy_hot?(-15, 67)
		assert_equal true, @m.icy_hot?(0, 100)
		assert_equal false, @m.icy_hot?(6, 599)
	end

end
