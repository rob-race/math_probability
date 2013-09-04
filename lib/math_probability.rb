require "math_probability/version"

module MathProbability
##
# This class encapsulates mathimatical probability methods.  
  class Probability

    def self.sigma(start_seq, end_seq, seq_step)
      summnation ||= 0
      seq_step.gsub!(/((?![x-z0-9\s\.\-\+\*\/\(\)]).)*/,'').upcase!
      raise ArgumentError , "Only use x,y,z as variables" if (seq_step =~ /[A-Z]/).nil?
      (start_seq..end_seq).each do |value|
        summnation += eval(seq_step.gsub(/[X-Z]/,value.to_s))
      end
      summnation
    end

    def self.permutations_no_repeat(objects, at_a_time)
      (objects.factoral)/(objects - at_a_time).factoral
    end

    def self.permutations_with_repeat(objects, at_a_time)
      objects**at_a_time
    end

    def self.combinations(objects, at_a_time)
      (((objects.factoral)/((objects-at_a_time).factoral))*(1.0/(at_a_time.factoral))).to_i
    end

    def self.probability(choices, outcomes, reduce=true)
      answer ||= []
      a = choices.to_f / outcomes
      answer << a << "#{a*100}%" << (reduce ? reduced_fraction(choices, outcomes) : "#{choices}/#{outcomes}")
    end

    private

    def self.reduced_fraction(nominator, denominator)
      lcd ||= denominator
      denominator.downto(2).each do |n|
        if nominator % n == 0 && denominator % n == 0 && n != denominator && n < lcd
          lcd = n
        end
      end
      lcd != denominator ? "#{nominator/lcd}/#{denominator/lcd}" : "#{nominator}/#{denominator}"
    end

  end
end

class Integer
  def factoral
    self.downto(1).inject(:*)
  end
end
