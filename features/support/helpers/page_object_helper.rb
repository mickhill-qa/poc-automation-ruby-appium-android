class PageObjectHelper

  def mapping(type, path)
    { type => path }
  end

  def wait_element(element_mapping, seconds)
    Selenium::WebDriver::Wait.new(:timeout => seconds).until do
      find_element(element_mapping).displayed?
    end
  end

end
