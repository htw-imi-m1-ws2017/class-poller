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
    click_on 'add-answer-link'
    expect(page).to have_content "New Answer for #{@poll.question}"
  end
end
