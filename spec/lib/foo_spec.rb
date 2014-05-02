require 'spec_helper'

describe Foo do
  let(:foo){ Foo.new }

  describe "#bar" do
    it "displayed 'You called bar.'" do
      output = capture(:stdout) do
        foo.bar 
      end.chomp
      expect(output).to eq 'You called bar.'
    end
  end

  describe "#baz" do
    it "displays 'You called baz.'" do
      output = capture(:stdout) do
        foo.baz
      end.chomp
      expect(output).to eq 'You called baz.'
    end
  end
end
