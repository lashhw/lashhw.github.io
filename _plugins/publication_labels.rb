Jekyll::Hooks.register :pages, :post_render do |item|
  item.output = item.output.gsub(">DOI</a>", ">Paper</a>")
  item.output = item.output.gsub(">Abs</a>", ">Abstract</a>")
end
