Dado("que estou na tela inicial do site") do
  @home_page = HomePage.new
  @home_page.load
end

Dado("eu clico em ver ofertas") do
  @home_page.search_button.click
end

Quando("eu faço filtros por marca, modelo e versão") do |table|
  @search_page = SearchPage.new
  table.hashes.each do |row|
    @search_page.car_brand_honda.click
    @search_page.car_model_icon.click
    @search_page.car_model_options.click
    @search_page.car_version_icon.click
    @search_page.click_random_car_version
  end
end

Então("o resultado é apresentado na tela") do
  expect(page).to have_css('.title-search')
end