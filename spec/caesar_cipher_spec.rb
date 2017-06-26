require "caesar_cipher"

describe CaesarCipher do
  describe ".caesar_cipher" do
    context "given a single letter and 1" do
      context "given A, 1" do
        it "returns B" do
          expect(CaesarCipher.caesar_cipher("A", 1)).to eql("B")
        end
      end
      context "given z, 1" do
        it "returns a" do
          expect(CaesarCipher.caesar_cipher("z", 1)).to eql("a")
        end
      end
    end
  end
end