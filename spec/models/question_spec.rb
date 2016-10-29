require 'rails_helper'

RSpec.describe Question, type: :model do
  def respond_test(attribute)
    expect(question).to respond_to(attribute)
  end
  let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolved: false) }

  describe "attributes" do
    it "has title, body and resolved attributes" do
      expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", resolved: false)
    end

    it "should respond to title, body and resolved" do
      respond_test(:body)
      respond_test(:title)
      respond_test(:resolved)
    end


  end

end
