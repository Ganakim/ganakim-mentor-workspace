module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
    before_filter :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = 'Spencer\'s Landing'
    @seo_keywords = 'Spencer Cornwall Ganakim Portfolio'
  end
end