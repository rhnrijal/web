class MainController < ApplicationController
  def index
  end

  def ps1
  end

  def ps2
  end

  def googleNews
    require 'open-uri'
    require 'nokogiri'
    doc = Nokogiri::HTML(open("https://news.google.com/topics/CAAqJggKIiBDQkFTRWdvSUwyMHZNRGx1YlY4U0FtVnVHZ0pWVXlnQVAB?hl=en-US&gl=US&ceid=US%3Aen"))
    @objects = doc.css('.NiLAwe.gAl5If.jVwmLb.Oc0wGc.R7GTQ.keNKEd.j7vNaf.nID9nc')
    @link = []
    @image = []
    @title = []

    for obj in @objects
      @link.push(obj.css('.VDXfz'))
      @image.push(obj.css('.tvs3Id.dIH98c'))
      @title.push(obj.css('h3').css('.ipQwMb.Q7tWef'))
    end

    var = Nokogiri::HTML(open("https://news.google.com/topics/CAAqJggKIiBDQkFTRWdvSUwyMHZNRFZxYUdjU0FtVnVHZ0pWVXlnQVAB?hl=en-US&gl=US&ceid=US%3Aen"))
    @tags = var.css('.NiLAwe.gAl5If.jVwmLb.Oc0wGc.R7GTQ.keNKEd.j7vNaf.nID9nc')
    @head_link = []
    @head_img = []
    @head_title = []

    for i in @tags
      @head_link.push(i.css('.VDXfz'))
      @head_img.push(i.css('.tvs3Id.dIH98c'))
      @head_title.push(i.css('h3').css('.ipQwMb.Q7tWef'))
    end
  end

  def divideByZero
    logger.error "About to divide by 0!"
    a = 3/0
  end
end

