require 'spec_helper'

describe Glimmer::ScientificCalculator::Presenter do
  # TODO test exception case when calling equal without requesting an operation or providing a second number
  context 'addition' do
    after do
      subject.press('AC')
    end
    
    it 'adds 2 numbers' do
      expect(subject.result).to eq('0')
      subject.press('1')
      expect(subject.result).to eq('1')
      subject.press('+')
      expect(subject.result).to eq('1')
      subject.press('2')
      expect(subject.result).to eq('2')
      subject.press('+')
      expect(subject.result).to eq('3')
      subject.press('3')
      expect(subject.result).to eq('3')
      subject.press('0')
      expect(subject.result).to eq('30')
      subject.press('=')
      expect(subject.result).to eq('33')
      subject.press('=')
      expect(subject.result).to eq('63')
      subject.press('+')
      expect(subject.result).to eq('63')
      subject.press('2')
      expect(subject.result).to eq('2')
      subject.press('=')
      expect(subject.result).to eq('65')
    end
    
    it 'subtracts 2 numbers' do
      expect(subject.result).to eq('0')
      subject.press('6')
      expect(subject.result).to eq('6')
      subject.press('5')
      expect(subject.result).to eq('65')
      subject.press('-')
      expect(subject.result).to eq('65')
      subject.press('2')
      expect(subject.result).to eq('2')
      subject.press('-')
      expect(subject.result).to eq('63')
      subject.press('3')
      expect(subject.result).to eq('3')
      subject.press('0')
      expect(subject.result).to eq('30')
      subject.press('=')
      expect(subject.result).to eq('33')
      subject.press('=')
      expect(subject.result).to eq('3')
      subject.press('-')
      expect(subject.result).to eq('3')
      subject.press('2')
      expect(subject.result).to eq('2')
      subject.press('=')
      expect(subject.result).to eq('1')
    end
    
  end
end
