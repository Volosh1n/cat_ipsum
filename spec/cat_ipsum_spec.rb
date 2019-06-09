RSpec.describe CatIpsum do
  SOME_DEFINED_SEED = 1234

  describe '#sentence' do
    it { expect(CatIpsum.sentence).to be_a String }

    it 'returns unique actions' do
      acions = CatIpsum.sentence.split(', ')
      expect(acions.uniq.length).to eq(acions.length)
    end
  end

  describe '#phrase' do
    it { expect(CatIpsum.phrase).to be_a String }
  end

  describe '#sentences' do
    it { expect(CatIpsum.sentences).to be_a Array }

    it 'returns unique sentences' do
      sentences = CatIpsum.sentences
      expect(sentences.uniq.length).to eq(sentences.length)
    end
  end

  describe '#phrases' do
    it { expect(CatIpsum.phrases).to be_a Array }
  end

  describe '#paragraph' do
    it { expect(CatIpsum.paragraph).to be_a String }
  end

  describe '#paragraphs' do
    it { expect(CatIpsum.paragraphs).to be_a Array }
  end

  describe 'seed manage' do
    it 'allows to reset seed to generate repeatable data' do
      CatIpsum::Random.reset!
      first_call = CatIpsum.sentences
      CatIpsum::Random.reset!
      second_call = CatIpsum.sentences
      expect(first_call).to eq(second_call)
    end
  end
end
