# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Bandwidth
  # ApiCallStateResponse Model.
  class ApiCallStateResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :call_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :parent_call_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :application_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :to

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :from

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :direction

    # TODO: Write general description for this method
    # @return [StateEnum]
    attr_accessor :state

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :start_time

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :answer_time

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :end_time

    # TODO: Write general description for this method
    # @return [DisconnectCauseEnum]
    attr_accessor :disconnect_cause

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :error_message

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :error_id

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :last_update

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['call_id'] = 'callId'
      @_hash['parent_call_id'] = 'parentCallId'
      @_hash['application_id'] = 'applicationId'
      @_hash['account_id'] = 'accountId'
      @_hash['to'] = 'to'
      @_hash['from'] = 'from'
      @_hash['direction'] = 'direction'
      @_hash['state'] = 'state'
      @_hash['start_time'] = 'startTime'
      @_hash['answer_time'] = 'answerTime'
      @_hash['end_time'] = 'endTime'
      @_hash['disconnect_cause'] = 'disconnectCause'
      @_hash['error_message'] = 'errorMessage'
      @_hash['error_id'] = 'errorId'
      @_hash['last_update'] = 'lastUpdate'
      @_hash
    end

    def initialize(call_id = nil,
                   parent_call_id = nil,
                   application_id = nil,
                   account_id = nil,
                   to = nil,
                   from = nil,
                   direction = nil,
                   state = nil,
                   start_time = nil,
                   answer_time = nil,
                   end_time = nil,
                   disconnect_cause = nil,
                   error_message = nil,
                   error_id = nil,
                   last_update = nil)
      @call_id = call_id
      @parent_call_id = parent_call_id
      @application_id = application_id
      @account_id = account_id
      @to = to
      @from = from
      @direction = direction
      @state = state
      @start_time = start_time
      @answer_time = answer_time
      @end_time = end_time
      @disconnect_cause = disconnect_cause
      @error_message = error_message
      @error_id = error_id
      @last_update = last_update
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      call_id = hash['callId']
      parent_call_id = hash['parentCallId']
      application_id = hash['applicationId']
      account_id = hash['accountId']
      to = hash['to']
      from = hash['from']
      direction = hash['direction']
      state = hash['state']
      start_time = APIHelper.rfc3339(hash['startTime']) if hash['startTime']
      answer_time = APIHelper.rfc3339(hash['answerTime']) if
        hash['answerTime']
      end_time = APIHelper.rfc3339(hash['endTime']) if hash['endTime']
      disconnect_cause = hash['disconnectCause']
      error_message = hash['errorMessage']
      error_id = hash['errorId']
      last_update = APIHelper.rfc3339(hash['lastUpdate']) if
        hash['lastUpdate']

      # Create object from extracted values.
      ApiCallStateResponse.new(call_id,
                               parent_call_id,
                               application_id,
                               account_id,
                               to,
                               from,
                               direction,
                               state,
                               start_time,
                               answer_time,
                               end_time,
                               disconnect_cause,
                               error_message,
                               error_id,
                               last_update)
    end
  end
end
