require "bibtex"

# Exposes papers.bib to Liquid as site.data.bib (keyed by cite key), so a project
# in _data/projects.yml can name a paper with `bibkey` instead of repeating its URLs.
Jekyll::Hooks.register :site, :post_read do |site|
  entries = BibTeX.open(File.join(site.source, "_bibliography/papers.bib")).entries
  site.data["bib"] = entries.transform_values { |entry| entry.fields.map { |name, value| [name.to_s, value.to_s] }.to_h }
end
