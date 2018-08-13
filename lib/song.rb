require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'

class Song
  extend Memorable
  extend Findable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  def self.all
    @@songs
  end
end
