# frozen_string_literal: true

require('spec_helper')
# testsforCitiescontroller
class CitiesControllerTest < ActionDispatch::IntegrationTest
  before { @city = cities(:one) }
  it('should get index') do
    get(cities_url)
    assert_response(:success)
  end
  it('should get new') do
    get(new_city_url)
    assert_response(:success)
  end
  it('should create city') do
    expect do
      post(cities_url, params: { city: { city_name: @city.city_name } })
    end.to(change { City.count })
    assert_redirected_to(city_url(City.last))
  end
  it('should show city') do
    get(city_url(@city))
    assert_response(:success)
  end
  it('should get edit') do
    get(edit_city_url(@city))
    assert_response(:success)
  end
  it('should update city') do
    patch(city_url(@city), params: { city: { city_name: @city.city_name } })
    assert_redirected_to(city_url(@city))
  end
  it('should destroy city') do
    expect { delete(city_url(@city)) }.to(change { City.count }.by(-1))
    assert_redirected_to(cities_url)
  end
end
