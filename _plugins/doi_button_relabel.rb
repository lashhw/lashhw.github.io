Jekyll::Hooks.register [:pages, :documents], :post_render do |item|
  item.output = item.output.gsub(">DOI</a>", ">Paper</a>")
end
