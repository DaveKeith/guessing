require "./game"

class SmartPlayer
  def initialize
    @guess = 0
    @num = 0
    @number = 0
  end

  def set_first_guess(max)
    if @guess == 0
      @guess = max / 2
    end
  end

  def set_second_guess(max)
    if @guess == max / 2
      if @num > 0
        @guess = @guess + @guess / 2
      else
        @guess = @guess / 2
      end
    end
  end


  def set_multiple_guesses
    if @num > 0
      @guess += 1
    else
      @guess -= 1
    end
  end

  def set_greater_guess
    @num = 1
  end

  def set_lesser_guess
    @num = 0
  end

  def get_guess(max)
    if @guess == 0
      set_first_guess(max)
    elsif @guess == max / 2
      set_second_guess(max)
    else
      set_multiple_guesses
    end
    @guess.to_i
  end
end
