# frozen_string_literal: true

require './caesar_cipher'

describe '#caesar_cipher' do
  context 'without punctuation' do
    it 'returns a rotated string' do
      expect(caesar_cipher('What a string', 5)).to eql('Bmfy f xywnsl')
    end
  end

  context 'with punctuation' do
    it 'returns a rotated string with punctuation' do
      expect(caesar_cipher('What a string!!?!', 5)).to eql('Bmfy f xywnsl!!?!')
    end
  end

  context 'when capitalized' do
    it 'loops alphabet' do
      expect(caesar_cipher('ZZZZZ', 1)).to eql('AAAAA')
    end
  end

  context 'when uncapitalized' do
    it 'loops alphabet' do
      expect(caesar_cipher('wxyz', 4)).to eql('abcd')
    end
  end

  context 'with spaces' do
    it 'ignores spaces' do
      expect(caesar_cipher('   hello!', 6)).to eql('   nkrru!')
    end
  end
end
