class SearchPage < SitePrism::Page

  element :car_brand_honda, '[title="Honda"]'
  element :car_model_icon, '.Filters__line.Filters__line--gray.Filters__line--icon.Filters__line--icon--right'
  elements :car_model_option, '.Filters__line Filters__line__result'

  def choose_car_by_model modelo
    :car_model_option.each do |el|
      found_name = el.text.downcase
      if found_name.include? modelo.downcase
        el.click
        break
      end
    end
  end

end