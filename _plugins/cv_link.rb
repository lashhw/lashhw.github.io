# The CV PDF is served from this domain, so `external_links` never marks it
# external and it opens in the current tab. Send it to a new tab instead.
Jekyll::Hooks.register :pages, :post_render do |item|
  cv_pdf = item.site.data["socials"]["cv_pdf"]
  item.output = item.output.gsub(%(href="#{cv_pdf}"), %(href="#{cv_pdf}" target="_blank"))
end
