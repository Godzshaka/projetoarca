# frozen_string_literal: true

require('application_system_test_case')

# Tests for City class
class CitiesTest < ApplicationSystemTestCase
  before { @city = cities(:one) }
  it('visiting the index') do
    visit(cities_url)
    assert_selector('h1', text: 'Cities')
  end
  it('creating a City') do
    visit(cities_url)
    click_on('New City')
    fill_in('City name', with: @city.city_name)
    click_on('Create City')
    assert_text('City was successfully created')
    click_on('Back')
  end
  it('updating a City') do
    visit(cities_url)
    click_on('Edit', match: :first)
    fill_in('City name', with: @city.city_name)
    click_on('Update City')
    assert_text('City was successfully updated')
    click_on('Back')
  end
  it('destroying a City') do
    visit(cities_url)
    page.accept_confirm { click_on('Destroy', match: :first) }
    assert_text('City was successfully destroyed')
  end
end
