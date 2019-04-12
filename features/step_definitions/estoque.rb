Dado("filtro por loja") do
  @search_page = SearchPage.new
  @search_page.store_checkbox.click
  sleep(5)
end

Quando("clico em qualquer resultado") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("clico em ver estoque da loja") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("sou redirecionado para página dr estoque daquela loja") do
  pending # Write code here that turns the phrase above into concrete actions
end