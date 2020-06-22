# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
module TwoFactorAuth
  # APIController
  class APIController < BaseController
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # Two-Factor authentication with Bandwidth Voice services
    # @param [String] account_id Required parameter: Bandwidth Account ID with
    # Voice service enabled
    # @param [TwoFactorCodeRequestSchema] body Required parameter: Example:
    # @return [TwoFactorVoiceResponse] response from the API call
    def create_voice_two_factor(account_id,
                                body)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::TWOFACTORAUTHDEFAULT)
      _query_builder << '/accounts/{accountId}/code/voice'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => account_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      TwoFactorAuthBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise InvalidRequestException.new(
          'client request error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(_response,
                      data: TwoFactorVoiceResponse.from_hash(decoded))
    end

    # Two-Factor authentication with Bandwidth messaging services
    # @param [String] account_id Required parameter: Bandwidth Account ID with
    # Messaging service enabled
    # @param [TwoFactorCodeRequestSchema] body Required parameter: Example:
    # @return [TwoFactorMessagingResponse] response from the API call
    def create_messaging_two_factor(account_id,
                                    body)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::TWOFACTORAUTHDEFAULT)
      _query_builder << '/accounts/{accountId}/code/messaging'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => account_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      TwoFactorAuthBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise InvalidRequestException.new(
          'client request error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(_response,
                      data: TwoFactorMessagingResponse.from_hash(decoded))
    end

    # Verify a previously sent two-factor authentication code
    # @param [String] account_id Required parameter: Bandwidth Account ID with
    # Two-Factor enabled
    # @param [TwoFactorVerifyRequestSchema] body Required parameter: Example:
    # @return [TwoFactorVerifyCodeResponse] response from the API call
    def create_verify_two_factor(account_id,
                                 body)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::TWOFACTORAUTHDEFAULT)
      _query_builder << '/accounts/{accountId}/code/verify'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => account_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      TwoFactorAuthBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise InvalidRequestException.new(
          'client request error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(_response,
                      data: TwoFactorVerifyCodeResponse.from_hash(decoded))
    end
  end
end
end
