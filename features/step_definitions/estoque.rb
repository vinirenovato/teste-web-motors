Dado("eu filtro por loja") do
  @search_page = SearchPage.new
  page.evaluate_script("document.querySelector('.Checkbox #nao').click()")
end

Quando("eu clico em qualquer resultado") do
  @search_page.click_random_car_result
end

Quando("eu clico em ver estoque da loja") do
  @car_detail_page = CarDetailPage.new
  @car_detail_page.saler_stock_link.click
end

Então("sou redirecionado para página dr estoque daquela loja") do
  expect(page).to have_css('.title-search')
end

