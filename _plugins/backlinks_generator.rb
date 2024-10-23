module Jekyll
    class BacklinksGenerator < Generator
        def generate(site)
            all_notes = site.collections['docs'].docs
            all_posts = site.posts.docs
            all_pages = site.pages

            all_docs = all_notes + all_posts + all_pages

            # Identify backlinks and add them to each doc
            all_docs.each do |current_doc|
                backlinks = all_docs.select do |doc|
                    doc.content.include?(current_doc.url)
                end
                current_doc.data['backlinks'] = backlinks
            end
        end
    end
end