# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
module Messaging
  # APIController
  class APIController < BaseController
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # listMedia
    # @param [String] user_id Required parameter: Example:
    # @param [String] continuation_token Optional parameter: Example:
    # @return [List of Media] response from the API call
    def list_media(user_id,
                   continuation_token: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::MESSAGINGDEFAULT)
      _query_builder << '/users/{userId}/media'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'userId' => { 'value' => user_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Continuation-Token' => continuation_token
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      MessagingBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise MessagingException.new(
          '400 Request is malformed or invalid',
          _response
        )
      elsif _response.status_code == 401
        raise MessagingException.new(
          '401 The specified user does not have access to the account',
          _response
        )
      elsif _response.status_code == 403
        raise MessagingException.new(
          '403 The user does not have access to this API',
          _response
        )
      elsif _response.status_code == 404
        raise MessagingException.new(
          '404 Path not found',
          _response
        )
      elsif _response.status_code == 415
        raise MessagingException.new(
          '415 The content-type of the request is incorrect',
          _response
        )
      elsif _response.status_code == 429
        raise MessagingException.new(
          '429 The rate limit has been reached',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(
        _response,
        data: decoded.map { |element| Media.from_hash(element) }
      )
    end

    # getMedia
    # @param [String] user_id Required parameter: Example:
    # @param [String] media_id Required parameter: Example:
    # @return [Binary] response from the API call
    def get_media(user_id,
                  media_id)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::MESSAGINGDEFAULT)
      _query_builder << '/users/{userId}/media/{mediaId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'userId' => { 'value' => user_id, 'encode' => true },
        'mediaId' => { 'value' => media_id }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url
      )
      MessagingBasicAuth.apply(config, _request)
      _response = execute_request(_request, binary: true)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise MessagingException.new(
          '400 Request is malformed or invalid',
          _response
        )
      elsif _response.status_code == 401
        raise MessagingException.new(
          '401 The specified user does not have access to the account',
          _response
        )
      elsif _response.status_code == 403
        raise MessagingException.new(
          '403 The user does not have access to this API',
          _response
        )
      elsif _response.status_code == 404
        raise MessagingException.new(
          '404 Path not found',
          _response
        )
      elsif _response.status_code == 415
        raise MessagingException.new(
          '415 The content-type of the request is incorrect',
          _response
        )
      elsif _response.status_code == 429
        raise MessagingException.new(
          '429 The rate limit has been reached',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      ApiResponse.new(
        _response, data: _response.raw_body
      )
    end

    # uploadMedia
    # @param [String] user_id Required parameter: Example:
    # @param [String] media_id Required parameter: Example:
    # @param [Long] content_length Required parameter: Example:
    # @param [File | UploadIO] body Required parameter: Example:
    # @param [String] content_type Optional parameter:
    # Example:application/octet-stream
    # @param [String] cache_control Optional parameter: Example:
    # @return [void] response from the API call
    def upload_media(user_id,
                     media_id,
                     content_length,
                     body,
                     content_type: 'application/octet-stream',
                     cache_control: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::MESSAGINGDEFAULT)
      _query_builder << '/users/{userId}/media/{mediaId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'userId' => { 'value' => user_id, 'encode' => true },
        'mediaId' => { 'value' => media_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      if body.is_a? FileWrapper
        body_wrapper = body.file
        body_content_type = body.content_type
      else
        body_wrapper = body
        body_content_type = content_type
      end

      # Prepare headers.
      _headers = {
        'content-type' => body_content_type,
        'content-length' => body_wrapper.size.to_s,
        'Content-Length' => content_length,
        'Cache-Control' => cache_control
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.put(
        _query_url,
        headers: _headers,
        parameters: body_wrapper
      )
      MessagingBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise MessagingException.new(
          '400 Request is malformed or invalid',
          _response
        )
      elsif _response.status_code == 401
        raise MessagingException.new(
          '401 The specified user does not have access to the account',
          _response
        )
      elsif _response.status_code == 403
        raise MessagingException.new(
          '403 The user does not have access to this API',
          _response
        )
      elsif _response.status_code == 404
        raise MessagingException.new(
          '404 Path not found',
          _response
        )
      elsif _response.status_code == 415
        raise MessagingException.new(
          '415 The content-type of the request is incorrect',
          _response
        )
      elsif _response.status_code == 429
        raise MessagingException.new(
          '429 The rate limit has been reached',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      ApiResponse.new(_response)
    end

    # deleteMedia
    # @param [String] user_id Required parameter: Example:
    # @param [String] media_id Required parameter: Example:
    # @return [void] response from the API call
    def delete_media(user_id,
                     media_id)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::MESSAGINGDEFAULT)
      _query_builder << '/users/{userId}/media/{mediaId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'userId' => { 'value' => user_id, 'encode' => true },
        'mediaId' => { 'value' => media_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = config.http_client.delete(
        _query_url
      )
      MessagingBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise MessagingException.new(
          '400 Request is malformed or invalid',
          _response
        )
      elsif _response.status_code == 401
        raise MessagingException.new(
          '401 The specified user does not have access to the account',
          _response
        )
      elsif _response.status_code == 403
        raise MessagingException.new(
          '403 The user does not have access to this API',
          _response
        )
      elsif _response.status_code == 404
        raise MessagingException.new(
          '404 Path not found',
          _response
        )
      elsif _response.status_code == 415
        raise MessagingException.new(
          '415 The content-type of the request is incorrect',
          _response
        )
      elsif _response.status_code == 429
        raise MessagingException.new(
          '429 The rate limit has been reached',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      ApiResponse.new(_response)
    end

    # createMessage
    # @param [String] user_id Required parameter: Example:
    # @param [MessageRequest] body Optional parameter: Example:
    # @return [BandwidthMessage] response from the API call
    def create_message(user_id,
                       body: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::MESSAGINGDEFAULT)
      _query_builder << '/users/{userId}/messages'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'userId' => { 'value' => user_id, 'encode' => true }
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
      MessagingBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise MessagingException.new(
          '400 Request is malformed or invalid',
          _response
        )
      elsif _response.status_code == 401
        raise MessagingException.new(
          '401 The specified user does not have access to the account',
          _response
        )
      elsif _response.status_code == 403
        raise MessagingException.new(
          '403 The user does not have access to this API',
          _response
        )
      elsif _response.status_code == 404
        raise MessagingException.new(
          '404 Path not found',
          _response
        )
      elsif _response.status_code == 415
        raise MessagingException.new(
          '415 The content-type of the request is incorrect',
          _response
        )
      elsif _response.status_code == 429
        raise MessagingException.new(
          '429 The rate limit has been reached',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(
        _response, data: BandwidthMessage.from_hash(decoded)
      )
    end
  end
end
end
