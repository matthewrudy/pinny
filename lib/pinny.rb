# encoding: UTF-8

module Pinny

  TONES = {
    "a" => [nil, "ā", "á", "ǎ", "à"],
    "e" => [nil, "ē", "é", "ě", "è"],
    "i" => [nil, "ī", "í", "ǐ", "ì"],
    "o" => [nil, "ō", "ó", "ǒ", "ò"],
    "u" => [nil, "ū", "ú", "ǔ", "ù"],
    "v" => [nil, "ǖ", "ǘ", "ǚ", "ǜ"]
  }

  module ModuleMethods
    def to_pinyin(string)
      string.split(/\b/).map do |word|
        if is_pinyin?(word)
          add_tone_mark(word)
        else
          word
        end
      end.join("")
    end

    def is_pinyin?(word)
      word =~ /^\w+[1-5]$/
    end

    def extract_tone(word)
      tone = word.scan(/[1-4]$/).first

      word.sub!(/\d$/, "")

      tone && tone.to_i
    end

    def lowest_vowel(word)
      case word
      when /a/i then "a"
      when /e/i then "e"
      when /i/i then "i"
      when /o/i then "o"
      when /u/i then "u"
      when /v/i then "v"
      end
    end

    def add_tone_mark(word)
      if t = extract_tone(word)
        v = lowest_vowel(word)
        r = TONES[v] && TONES[v][t]
        word.sub(v, r)
      else
        word
      end
    end
  end

  extend ModuleMethods

end

