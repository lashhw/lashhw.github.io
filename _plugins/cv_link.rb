# The CV and slides PDFs are served from this domain, so `external_links`
# never marks them external. Open both in a new tab instead.
Jekyll::Hooks.register :pages, :post_render do |item|
  cv_pdf = item.site.data["socials"]["cv_pdf"]
  item.output = item.output.gsub(%r{href="#{Regexp.escape(cv_pdf)}"}, '\0 target="_blank"')
  item.output = item.output.gsub(%r{href="[^"]*/assets/pdf/slides\.pdf"}, '\0 target="_blank"')
end
