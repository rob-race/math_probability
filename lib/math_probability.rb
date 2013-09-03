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

    def self.probability(choice, outcomes)
      answer ||= []
      a = choice.to_f / outcomes
      answer << a << "#{a*100}%" << "#{choice}/#{outcomes}"
    end

  end
end

class Integer
  def factoral
    self.downto(1).inject(:*)
  end
end
