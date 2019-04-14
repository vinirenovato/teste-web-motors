Dado("que estou na tela inicial do site") do
  @home_page = HomePage.new
  @home_page.load
end

Dado("eu clico em ver ofertas") do
  @home_page.search_button.click
end

Quando("eu faço filtros pela marca honda, modelo city e qualquer versão") do
  @search_page = SearchPage.new
  @search_page.click_on_filters
end

Então("o resultado é apresentado na tela") do
  expect(page).to have_css('.title-search')
end