# frozen_string_literal: true

require('application_system_test_case')

# Tests for State class
class StatesTest < ApplicationSystemTestCase
  before { @state = states(:one) }
  it('visiting the index') do
    visit(states_url)
    assert_selector('h1', text: 'States')
  end
  it('creating a State') do
    visit(states_url)
    click_on('New State')
    fill_in('State name', with: @state.state_name)
    click_on('Create State')
    assert_text('State was successfully created')
    click_on('Back')
  end
  it('updating a State') do
    visit(states_url)
    click_on('Edit', match: :first)
    fill_in('State name', with: @state.state_name)
    click_on('Update State')
    assert_text('State was successfully updated')
    click_on('Back')
  end
  it('destroying a State') do
    visit(states_url)
    page.accept_confirm { click_on('Destroy', match: :first) }
    assert_text('State was successfully destroyed')
  end
end
