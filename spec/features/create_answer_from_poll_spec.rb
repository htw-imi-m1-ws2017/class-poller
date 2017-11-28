require 'rails_helper'
describe Poll do
  before :each do
    @poll = Poll.create(question: 'Which framework is the best?')
  end
  it 'shows the question on the poll page' do
    visit poll_path(@poll)
    expect(page).to have_content(@poll.question)
  end
  it 'creates answer with the correct poll id' do
    visit poll_path(@poll)
    # note that i've introduced an id here to make the test less brittle
    click_on 'add-answer-link'
    expect(page).to have_content "New Answer for #{@poll.question}"
    fill_in 'Text', with: 'Rails'
    # https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/change-matcher
    expect { click_on 'Create Answer' }.to change { @poll.answers.count }.by(1)
    expect(page).to have_content('Rails')
  end
end
