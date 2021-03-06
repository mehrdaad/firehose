# frozen_string_literal: true

require 'link_parser'

class ParseLinkJob < ApplicationJob
  def self.parse(link_params)
    perform_later(link_params)
  end

  def perform(link_params)
    link = Link.create!(link_params)
    parsed_link = link_parser.process(url: link.url)

    attributes = { url: parsed_link.canonical }
    attributes[:title] = parsed_link.title if default_title?(link)

    link.update!(attributes)
  end

  private

  def link_parser
    LinkParser
  end

  def default_title?(link)
    link.title.blank? || link.title == link.url
  end
end
