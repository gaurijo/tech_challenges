class Bob 
  def initialize

  end

  def hey(remark)
    if (remark == remark.upcase) && (remark.split(//).last == "?")
      return "Calm down, I know what I'm doing!"
    elsif remark == remark.upcase && remark != ""
      return "Whoa, chill out!"
    elsif remark.split(//).last == "?"
      return "Sure."
    elsif remark == ""
      return "Fine. Be that way!"
    else
      return "Whatever."
    end
  end
end