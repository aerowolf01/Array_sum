require 'spec_helper'

describe Frequency do

  describe '#new' do
    # Am i testing ruby at this point?
    it 'can take no arguments' do
      expect { Frequency.new }.not_to raise_exception
    end

    # or a custom wordlist object?
    it 'can take a word list' do
      expect { Frequency.new :list => "some\nwords" }.not_to raise_exception
    end
  end

  before do
    @word_list = "something\nsomething\nhello\nworld\nsomething"
    @f_new = Frequency.new
    @f = Frequency.new :list => @word_list
  end

  describe '#words?' do
    it 'returns true if there are words' do
      @f.has_words?.should == true
    end

    it 'returns false if there no are words' do
      @f_new.has_words?.should == false
    end
  end

  describe '#words' do
    it 'will return an empty hash if there are no words' do
      @f_new.words.should == {}
    end

    xit 'will return an frequency if there are words' do
    end
  end

end
