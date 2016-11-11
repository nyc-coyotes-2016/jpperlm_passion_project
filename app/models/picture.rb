class Picture < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user

  def highest_emotion
    temp_array = [self.anger, self.contempt, self.disgust,self.fear,self.happiness,self.neutral,self.sadness, self.surprise]
    index = temp_array.rindex(temp_array.max)
    arrrr = ["Anger","Contempt","Disgust","Fear","Happiness","Neutral", "Sadness", "Surprise"]
    return arrrr[index]
  end
  def text_feeling

    if self.score.to_f<=0.25
      return "Pretty sad or dull"
    elsif self.score.to_f <=0.5
      return "Neutral"
    elsif self.score.to_f <=0.75
      return "Pretty happy"
    else
      return "Awesome!"
    end
  end
end
