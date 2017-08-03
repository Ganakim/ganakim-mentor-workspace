module PortfoliosHelper
  def imgGenerator height:, width:
    "http://placehold.it/#{height}x#{width}"
  end
  
  def portfolioImg img, type
    if img.model.main_image? || img.model.thumb_image?
      img
    elsif type == 'thumb'
      imgGenerator(height: '350', width: '200')
    elsif type == 'main'
      imgGenerator(height: '600', width: '400')
    end
  end
end