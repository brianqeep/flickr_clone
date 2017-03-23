require 'rails_helper'

describe Client do
    it { should validate_presence_of :name }
    it { should validate_presence_of :tag }
  end
