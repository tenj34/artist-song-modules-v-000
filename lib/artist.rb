require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'

class Artist
  extend Memorable
  extend Findable
  include Paramable::InstanceMethods
  

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

end
