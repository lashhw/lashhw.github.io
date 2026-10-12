Jekyll::Hooks.register :pages, :post_render do |item|
  item.output = item.output.gsub(">DOI</a>", ">Paper</a>")
  item.output = item.output.gsub(">Abs</a>", ">Abstract</a>")
  item.output = item.output.gsub(/(<a\b[^>]*>\s*Code\s*<\/a>)(\s*)(<a\b[^>]*>\s*Poster\s*<\/a>)/, '\3\2\1')
end
