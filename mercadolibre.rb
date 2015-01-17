require 'nokogiri'
require 'open-uri'

response = open('http://www.mercadolibre.com.co')
document = Nokogiri::HTML(response)

links = document.css('.ch-g4-5 li a')

links.each do |link|
  puts link.text
  puts link.attr('href')
  puts '--'
  #Category.create(name: '', link: '')

  #detalle = open(link.attr('href'))
  #doc = Nokogiri::HTML(detalle)
end

#['casas', 'carros', 'clular'].each do |keyword|
  #open("http://listado.mercadolibre.com.co/#{keyword}")
#end
