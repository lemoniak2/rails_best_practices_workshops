require 'spec_helper'

describe Request do
  subject { create(:request) }

  describe '#offers_count' do
    let(:offer) { create(:offer) }
    before { subject.offers << offer }

    its(:offers_count) { should eql 1 }
  end
end