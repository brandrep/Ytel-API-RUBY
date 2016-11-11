# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class EmailController < BaseController
    @@instance = EmailController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Deletes a email address marked as spam from the spam list
    # @param [String] email Required parameter: Email address
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_delete_spam(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'email' => options['email']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/email/deletespamemail.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'email' => options['email']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Deletes a blocked email
    # @param [String] email Required parameter: Email address to remove from block list
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_delete_block(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'email' => options['email']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/email/deleteblocksemail.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'email' => options['email']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Add an email to the unsubscribe list
    # @param [String] email Required parameter: The email to add to the unsubscribe list
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def add_unsubscribes(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'email' => options['email']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/email/addunsubscribesemail.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'email' => options['email']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Send out an email
    # @param [String] to Required parameter: The to email address
    # @param [String] from Required parameter: The from email address
    # @param [SendEmailAs] type Required parameter: email format type, html or text
    # @param [String] subject Required parameter: Email subject
    # @param [String] message Required parameter: The body of the email message
    # @param [String] cc Optional parameter: CC Email address
    # @param [String] bcc Optional parameter: BCC Email address
    # @param [String] attachment Optional parameter: File to be attached.File must be less than 7MB.
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_send_email(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'to' => options['to'],
        'from' => options['from'],
        'type' => options['type'],
        'subject' => options['subject'],
        'message' => options['message']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/email/sendemails.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'to' => options['to'],
        'from' => options['from'],
        'type' => options['type'],
        'subject' => options['subject'],
        'message' => options['message'],
        'cc' => options['cc'],
        'bcc' => options['bcc'],
        'attachment' => options['attachment']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Delete emails from the unsubscribe list
    # @param [String] email Required parameter: The email to remove from the unsubscribe list
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_delete_unsubscribes(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'email' => options['email']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/email/deleteunsubscribedemail.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'email' => options['email']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List all unsubscribed email addresses
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @param [String] offset Optional parameter: Starting record of the list
    # @param [String] limit Optional parameter: Maximum number of records to be returned
    # @return String response from the API call
    def create_list_unsubscribes(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/email/listunsubscribedemail.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'offset' => options['offset'],
        'limit' => options['limit']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List out all invalid email addresses
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @param [String] offet Optional parameter: Starting record for listing out emails
    # @param [String] limit Optional parameter: Maximum number of records to return
    # @return String response from the API call
    def create_list_invalid(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/email/listinvalidemail.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'offet' => options['offet'],
        'limit' => options['limit']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Delete an email address from the bounced address list
    # @param [String] email Required parameter: The email address to remove from the bounce list
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_delete_bounces(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'email' => options['email']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/email/deletebouncesemail.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'email' => options['email']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List out all email addresses that have bounced
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @param [String] offset Optional parameter: The record to start the list at
    # @param [String] limit Optional parameter: The maximum number of records to return
    # @return String response from the API call
    def create_list_bounces(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/email/listbounceemail.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'offset' => options['offset'],
        'limit' => options['limit']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List out all email addresses marked as spam
    # @param [String] response_type Required parameter: Response format, xml or json
    # @param [String] offset Optional parameter: The record number to start the list at
    # @param [String] limit Optional parameter: Maximum number of records to return
    # @return String response from the API call
    def create_list_spam(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'response_type' => options['response_type']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/email/listspamemail.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'offset' => options['offset'],
        'limit' => options['limit']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Outputs email addresses on your blocklist
    # @param [String] offset Optional parameter: Where to start in the output list
    # @param [String] limit Optional parameter: Maximum number of records to return
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_list_blocks(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/email/listblockemail.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'offset' => options['offset'],
        'limit' => options['limit']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end
  end
end
