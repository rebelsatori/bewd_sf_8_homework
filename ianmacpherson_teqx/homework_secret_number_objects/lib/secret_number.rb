# this class will generate our secret number for us
class SecretNumber
  attr_reader :number
  def initialize
    @number = Random.new.rand(1..10)
  end
end
