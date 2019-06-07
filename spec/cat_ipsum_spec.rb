RSpec.describe CatIpsum do
  describe '#sentence' do
    it { expect(CatIpsum.sentence).to be_a String }
  end

  describe '#phrase' do
    it { expect(CatIpsum.phrase).to be_a String }
  end

  describe '#sentences' do
    it { expect(CatIpsum.sentences).to be_a Array }
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
end
