require "caesar_cipher"

describe CaesarCipher do
  describe ".caesar_cipher" do
    context "given a single letter and 1" do
      context "given A, 1" do
        it "returns B" do
          expect(CaesarCipher.caesar_cipher("A", 1)).to eql("B")
        end
      end
    end
    context "given end of alphabet, wraps back to A" do
      context "given Z, 1" do
        it "wraps back to A" do
          expect(CaesarCipher.caesar_cipher("Z", 1)).to eql("A")
        end
      end
      context "given z, 1" do
        it "wraps back and returns a" do
          expect(CaesarCipher.caesar_cipher("z", 1)).to eql("a")
        end
      end
    end
  end
end