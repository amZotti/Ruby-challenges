def remove_url_anchor(url)
  url.split("#")[0].to_s
end
puts remove_url_anchor('www.codewars.com#about')
puts remove_url_anchor('www.codewars.com?page=1')
