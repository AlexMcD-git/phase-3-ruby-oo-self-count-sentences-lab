require 'pry'

class String

  def sentence?
    if self[-1] == '.'
      true
    else 
      false
    end
  end

  def question?
    if self[-1] == '?'
      true
    else 
      false
    end
  end

  def exclamation?
    if self[-1] == '!'
      true
    else 
      false
    end
  end

  def count_sentences
    sentences = 0
    i=0
    while i<self.length
      if (self[i] == '.' || self[i] == '?' || self[i] == '!') && (self[i-1] != '.' && self[i-1] != '?' && self[i-1] != '!')
        sentences += 1
      end
      i+=1
    end
  sentences
  end
end