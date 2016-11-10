require 'net/http'


uri = URI('https://api.kairos.com/v2/media')
res = Net::HTTP.post_form(uri, app_id:359468ea, app_key:76395b61b8a521a05dece13dd3cf8686, source:'http://mienshiang.com/wp-content/uploads/images-29.jpg')
puts res.body

'http://wwww.boo.com?k1=' + uriComponentEncode(url)
