require "caesar_cipher"

describe CaesarCipher do
  describe ".caesar_cipher" do
    context "given A, 1" do
      it "returns B" do
        expect(CaesarCipher.caesar_cipher("A", 1)).to eql("B")
      end
    end
  end
end