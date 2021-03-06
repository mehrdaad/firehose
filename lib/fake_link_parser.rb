# frozen_string_literal: true

require 'active_support/core_ext/string/inflections'

class FakeLinkParser
  def self.process(url:)
    new(url: url)
  end

  def initialize(url:)
    @url = url
  end

  def title
    url.split('/').last.titleize
  end

  def canonical
    url
  end

  private

  attr_reader :url
end
