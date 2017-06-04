module ApplicationHelper
    def form_group_tag(errors, &block)
        css_class = 'form-group'
        css_class << ' has-error' if errors.any?
        content_tag :div, capture(&block), class: css_class
    end
    
    def markdown(text)
        options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
        Markdown.new(text, *options).to_html.html_safe
    end
end
