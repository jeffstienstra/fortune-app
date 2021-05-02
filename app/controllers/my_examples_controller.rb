class MyExamplesController < ApplicationController
  def fortune_method
    title = "here is your fortune:"
    @random_number = rand(1..3)

    render json: {
             title: title,
             number: "your lucky number is #{@random_number}",
             fortune: fortune_generator,
           }
  end

  def lottery_method
    title = "your lottery numbers are:"

    render json: {
             title: "your lottery numbers are: ",
             lotto: lotto_generator,
           }
  end

  def fortune_generator
    if @random_number == 1
      fortune = "You will become great if you believe in yourself."
    elsif @random_number == 2
      fortune = "A stranger will soon enter your life with blessings to share."
    elsif @random_number == 3
      fortune = "A dream you have will come true."
    else
      fortune = "not a valid number"
    end
    return fortune
  end

  def lotto_generator
    @lotto_numbers = []
    6.times do
      random_number = rand(1..60)
      @lotto_numbers << random_number
    end
    return @lotto_numbers
  end
end
