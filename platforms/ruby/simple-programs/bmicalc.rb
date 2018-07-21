#!/usr/bin/env ruby

def compute_bmi(weight, height)
    weight/(height**2)
end


def main
    if ARGV.size >= 2
        weight, height = ARGV[0].to_f, ARGV[1].to_f
        bmi = compute_bmi weight, height/100.0
        category = if 18.5 < bmi && bmi < 25
                       "Normal weight"
                   elsif bmi <= 18.5
                       "Underweight"
                   elsif bmi >= 25
                       "Overweight"
                   end

        puts "Your BMI is #{bmi}. Weight category: #{category}"
    else
        puts "Usage: #{__FILE__} weight (kg) height (cm)"
    end
end


main
