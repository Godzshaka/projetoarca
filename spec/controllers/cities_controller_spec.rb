# frozen_string_literal: true

require 'rails_helper'

# testsforCitiescontroller
RSpec.describe CitiesController, type: :controller do
  render_views
  # before { @city = cities(:one) }

  before(:all) do
    parana = State.create(state_name: 'Parana')
    rs = State.create(state_name: 'Rio Grande do Sul')
    City.create(city_name: 'Curitiba', state_id: parana.id)
    City.create(city_name: 'Ponta Grossa', state_id: parana.id)
    City.create(city_name: 'Curitibanos', state_id: rs.id)
  end

  context 'GET index passing params' do
    it 'should return matching cities when passing all params' do
      get :index, params: { estado: 'par', cidade: 'cur', format: :json }
      expect(response.body).to include('Curitiba')
      expect(response.body).not_to include('Ponta Grossa')
      expect(response.body).not_to include('Curitibanos')
    end

    it 'should return all state cities when passing only state param' do
      # parana = State.create(state_name: "Parana")
      # rs = State.create(state_name: "Rio Grande do Sul")
      # curitiba = City.create(city_name: "Curitiba", state_id: parana.id)
      # pg = City.create(city_name: "Ponta Grossa", state_id: parana.id)
      # curitibanos = City.create(city_name: "Curitibanos", state_id: rs.id)
      get :index, params: { estado: 'par', cidade: '', format: :json }

      expect(response.body).to include('Curitiba')
      expect(response.body).to include('Ponta Grossa')
      expect(response.body).not_to include('Curitibanos')
    end

    it 'should return all cities matching when passing only city param' do
      # parana = State.create(state_name: "Parana")
      # rs = State.create(state_name: "Rio Grande do Sul")
      # curitiba = City.create(city_name: "Curitiba", state_id: parana.id)
      # pg = City.create(city_name: "Ponta Grossa", state_id: parana.id)
      # curitibanos = City.create(city_name: "Curitibanos", state_id: rs.id)
      get :index, params: { estado: '', cidade: 'cur', format: :json }

      expect(response.body).to include('Curitiba')
      expect(response.body).to include('Curitibanos')
      expect(response.body).not_to include('Ponta Grossa')
    end
    it 'should return all cities matching when passing no params' do
      # parana = State.create(state_name: "Parana")
      # rs = State.create(state_name: "Rio Grande do Sul")
      # curitiba = City.create(city_name: "Curitiba", state_id: parana.id)
      # pg = City.create(city_name: "Ponta Grossa", state_id: parana.id)
      # curitibanos = City.create(city_name: "Curitibanos", state_id: rs.id)
      get :index, params: { estado: '', cidade: '', format: :json }

      expect(response.body).to include('Curitiba')
      expect(response.body).to include('Curitibanos')
      expect(response.body).to include('Ponta Grossa')
    end
  end
end

#     it('should get index') do
#       get(cities_url)
#       assert_response(:success)
#     end

#     it('should get params') do
#       params = {:estado=>"par", :cidade=>"cur"}
#       get cities_url, params
#       puts response
#       expect(:success)
#     end
#   end

#   it('should get new') do
#     get(new_city_url)
#     assert_response(:success)
#   end
#   it('should create city') do
#     expect do
#       post(cities_url, params: { city: { city_name: @city.city_name } })
#     end.to(change { City.count })
#     assert_redirected_to(city_url(City.last))
#   end
#   it('should show city') do
#     get(city_url(@city))
#     assert_response(:success)
#   end
#   it('should get edit') do
#     get(edit_city_url(@city))
#     assert_response(:success)
#   end
#   it('should update city') do
#     patch(city_url(@city), params: { city: { city_name: @city.city_name } })
#     assert_redirected_to(city_url(@city))
#   end
#   it('should destroy city') do
#     expect { delete(city_url(@city)) }.to(change { City.count }.by(-1))
#     assert_redirected_to(cities_url)
#   end
# end
