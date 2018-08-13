require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramble'

class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramble::InstanceMethods
  include Memorable::InstanceMethods


  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    songs.each { |song| add_song(song) }
  end

end
