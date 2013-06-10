require 'spec_helper'
require 'ostruct'

describe Mail::Message do
  describe '.deliver' do
    let(:mailer) { ActionMailer::Base.mail }
    let(:mock_obj) { OpenStruct.new(deliver_then_terminate: result) }
    let(:result) { "a result" }
    before do
      mailer.should_receive(:async).and_return(mock_obj)
    end

    it "should call async for deliver_then_terminate" do
      expect(mailer.deliver).to eq(result)
    end
  end
end