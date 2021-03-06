# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # DeferredResult Model.
  class DeferredResult < BaseModel
    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :result

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :set_or_expired

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['result'] = 'result'
      @_hash['set_or_expired'] = 'setOrExpired'
      @_hash
    end

    def initialize(result = nil,
                   set_or_expired = nil)
      @result = result
      @set_or_expired = set_or_expired
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      result = hash['result']
      set_or_expired = hash['setOrExpired']

      # Create object from extracted values.
      DeferredResult.new(result,
                         set_or_expired)
    end
  end
end
