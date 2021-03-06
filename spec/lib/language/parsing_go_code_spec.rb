require 'spec_helper'

describe "Parsing Go code", go: true do
  it "returns false for invalid code" do
    Language::Go.should_not be_parsing <<CODE
package main

function main {
}
CODE
  end

  it "returns true for valid code" do
    Language::Go.should be_parsing <<CODE
package main

func main() {
}
CODE
  end

  it "returns true for no code" do
    Language::Go.should be_parsing ""
  end
end
