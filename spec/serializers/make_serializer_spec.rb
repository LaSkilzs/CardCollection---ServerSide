require 'rails_helper'

RSpec.describe MakeSerializer do
  pending
  subject { describe_class.new(make) }
  let(:make) { instance_double(Make, id: 8, name: "Toyota") }
end