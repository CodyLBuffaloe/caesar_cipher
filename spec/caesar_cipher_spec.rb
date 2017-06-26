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
    context "given words separated by a space" do
      it "preserves the space untranslated and correctly transposes the letters" do
        expect(CaesarCipher.caesar_cipher("cat act", 1)).to eql("dbu bdu")
      end
    end
    context "given shift as length of alphabet" do
      it "wraps and returns the letter 26 positions away from itself" do
        expect(CaesarCipher.caesar_cipher("z", 26)).to eql("z")
      end
    end
    context "given a sentence with punctuation" do
      it "preserves the punctuation" do
        expect(CaesarCipher.caesar_cipher("I'm sorry, I can't.", 1)).to eql("J'n tpssz, J dbo'u.")
      end
    end
  end
end