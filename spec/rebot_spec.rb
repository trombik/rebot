require "spec_helper"

RSpec.describe Rebot do
  it "has a version number" do
    expect(Rebot::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end
