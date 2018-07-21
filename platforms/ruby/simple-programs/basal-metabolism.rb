#!/usr/bin/env ruby

# Computes the basal metabolism following the Harris-Benedict-Formula.
def compute_basal_metabolism(weight, height, age, sex)
    case sex
    when :m, :male
        66.5 + 13.7 * weight + 5.0 * height - 6.8 * age
    when :f, :female
        655 + 9.6 * weight + 1.8 * height - 4.7 * age
    else
        0
    end
end


def main
    if ARGV.size >= 4
        weight, height, age, sex = ARGV[0].to_f, ARGV[1].to_f, ARGV[2].to_f, ARGV[3].to_sym
        r = compute_basal_metabolism weight, height, age, sex

        puts "Given your sex #{sex}, weight #{weight}, height #{height}, and age #{age}"
        puts "your basal metabolism is #{r} kcal."
    else
        puts "Usage: #{__FILE__} weight (kg) height (cm) age (years) sex (m|f)"
    end
end


main
