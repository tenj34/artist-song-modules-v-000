require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'


class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable:: InstanceMethods
  extend Findable::ClassMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
