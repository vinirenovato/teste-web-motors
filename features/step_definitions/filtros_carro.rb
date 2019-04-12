Dado("que estou na tela inicial do site") do
  @home_page = HomePage.new
  @home_page.load
end

Dado("eu clico em ver ofertas") do
  @home_page.search_button.click
end

Quando("eu faço determinados filtros") do |table|
  @search_page = SearchPage.new
  table.hashes.each do |row|
    @search_page.car_brand_honda.click
    @search_page.choose_car_by_model(row[:modelo])
    sleep(5)

  end
end

Então("o resultado é apresentado na tela") do

end