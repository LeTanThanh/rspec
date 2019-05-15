RSpec.describe "example as block arg to it, before, and after" do
  before do |example|
    expect(example.description).to eq("is the example object")
  end

  after do |example|
    expect(example.description).to eq("is the example object")
  end

  it "is the example object" do |example|
    expect(example.description).to eq("is the example object")
  end
end

RSpec.describe "example as block arg to let" do
  let(:the_description) do |example|
    example.description
  end

  it "is the example object" do |example|
    expect(the_description).to eq(example.description)
  end
end

RSpec.describe "example as block arg to subject" do
  subject do |example|
    example.description
  end

  it "is the example object" do |example|
    expect(subject).to eq(example.description)
  end
end

RSpec.describe "example as block arg to subject with a name" do
  subject(:the_subject) do |example|
    example.description
  end

  it "is the example object" do |example|
    expect(subject).to eq(example.description)
    expect(the_subject).to eq(example.description)
  end
end
