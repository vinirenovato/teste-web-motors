class SearchPage < SitePrism::Page

  element :car_brand_honda, '[title="Honda"]'
  element :car_model_icon, '.Filters__line.Filters__line--gray.Filters__line--icon.Filters__line--icon--right'
  element :car_model_options, "main.page.page--search div.container div.Search-result.Search-result--container-left:nth-child(2) div.Filters__container__scroll div.Slide.SlideLeft.SlideLeft--opened:nth-child(3) div.Filters__container div.Filters__container__group:nth-child(5) > div.Filters__line.Filters__line__result:nth-child(3)"
  element :car_version_icon, '.Filters__line.Filters__line--icon.Filters__line--icon.Filters__line--icon--right.Filters__line--gray'
  elements :car_version_options, '.Filters__line.Filters__line__result'
  element :store_checkbox, 'main.page.page--search div.container div.Search-result.Search-result--container-left:nth-child(2) div.Filters__container__scroll div.Filters__container__group:nth-child(5) div.Form__InputRow:nth-child(3) > label.Checkbox'

  def choose_car_by_model modelo
    car_model_option.each do |el|
      puts 'entrei no for'
      found_name = el.text.downcase
      if found_name.include? modelo.downcase
        puts 'entrei no if'
        el.click
        break
      end
    end
  end

  def click_random_car_version
    wait_until_<car_version_options[0]>_visible
    car_version_options[rand(0..car_version_options.length)].click
  end

  def result_search_is_visible
    expect(page).to have_css('.title-search')
  end

end