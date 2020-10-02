# frozen_string_literal: true

require('spec_helper')
# testsforStatescontroller
class StatesControllerTest < ActionDispatch::IntegrationTest
  before { @state = states(:one) }
  it('should get index') do
    get(states_url)
    assert_response(:success)
  end

  it('should get new') do
    get(new_state_url)
    assert_response(:success)
  end

  it('should create state') do
    expect do
      post(states_url, params: { state: { state_name: @state.state_name } })
    end.to(change { State.count })
    assert_redirected_to(state_url(State.last))
  end

  it('should show state') do
    get(state_url(@state))
    assert_response(:success)
  end

  it('should get edit') do
    get(edit_state_url(@state))
    assert_response(:success)
  end

  it('should update state') do
    patch(state_url(@state), params: { state: { state_name: @state.state_name } })
    assert_redirected_to(state_url(@state))
  end

  it('should destroy state') do
    expect { delete(state_url(@state)) }.to(change { State.count }.by(-1))
    assert_redirected_to(states_url)
  end
end
