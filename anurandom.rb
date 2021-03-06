require 'open-uri'

class ANURandom

  def self.getRandom(type="BINARY")

    if type == "BINARY"
      url = "http://150.203.48.55/RawBin.php"
    elsif type == "HEX"
      url = 'http://150.203.48.55/RawHex.php'
    elsif type == "CHAR"
      url = 'http://150.203.48.55/RawChar.php'
    end
    page_contents = open(url,) { |f| f.read }
    num = page_contents.split('"rng"')[1].split("<td>\n")[1].split('</td>')[0]
    return num
  end

  def self.getBin()
    getRandom "BINARY"
  end

  def self.getHex()
    getRandom "HEX"
  end

  def self.getChar()
    getRandom "CHAR"
  end

end