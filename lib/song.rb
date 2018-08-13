require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramble'


class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramble:: InstanceMethods
  extend Findable
  include Paramble

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
    @songs[]
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
