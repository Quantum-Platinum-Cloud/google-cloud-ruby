# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "google/cloud/errors"
require "google/cloud/retail/v2/search_service_pb"

module Google
  module Cloud
    module Retail
      module V2
        module SearchService
          ##
          # Client for the SearchService service.
          #
          # Service for search.
          #
          # This feature is only available for users who have Retail Search enabled.
          # Contact Retail Support (retail-search-support@google.com) if you are
          # interested in using Retail Search.
          #
          class Client
            include Paths

            # @private
            attr_reader :search_service_stub

            ##
            # Configure the SearchService Client class.
            #
            # See {::Google::Cloud::Retail::V2::SearchService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # ## Example
            #
            # To modify the configuration for all SearchService clients:
            #
            #     ::Google::Cloud::Retail::V2::SearchService::Client.configure do |config|
            #       config.timeout = 10.0
            #     end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "Retail", "V2"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.timeout = 60.0
                default_config.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14, 4]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the SearchService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Retail::V2::SearchService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new SearchService client object.
            #
            # ## Examples
            #
            # To create a new SearchService client with the default
            # configuration:
            #
            #     client = ::Google::Cloud::Retail::V2::SearchService::Client.new
            #
            # To create a new SearchService client with a custom
            # configuration:
            #
            #     client = ::Google::Cloud::Retail::V2::SearchService::Client.new do |config|
            #       config.timeout = 10.0
            #     end
            #
            # @yield [config] Configure the SearchService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/retail/v2/search_service_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the scope and endpoint are unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.scope == Client.configure.scope &&
                                       @config.endpoint == Client.configure.endpoint &&
                                       !@config.endpoint.split(".").first.include?("-")
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @search_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Retail::V2::SearchService::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Performs a search.
            #
            # This feature is only available for users who have Retail Search enabled.
            # Contact Retail Support (retail-search-support@google.com) if you are
            # interested in using Retail Search.
            #
            # @overload search(request, options = nil)
            #   Pass arguments to `search` via a request object, either of type
            #   {::Google::Cloud::Retail::V2::SearchRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Retail::V2::SearchRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload search(placement: nil, branch: nil, query: nil, visitor_id: nil, user_info: nil, page_size: nil, page_token: nil, offset: nil, filter: nil, canonical_filter: nil, order_by: nil, facet_specs: nil, dynamic_facet_spec: nil, boost_spec: nil, query_expansion_spec: nil, variant_rollup_keys: nil, page_categories: nil)
            #   Pass arguments to `search` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param placement [::String]
            #     Required. The resource name of the search engine placement, such as
            #     `projects/*/locations/global/catalogs/default_catalog/placements/default_search`.
            #     This field is used to identify the set of models that will be used to make
            #     the search.
            #
            #     We currently support one placement with the following ID:
            #
            #     * `default_search`.
            #   @param branch [::String]
            #     The branch resource name, such as
            #     `projects/*/locations/global/catalogs/default_catalog/branches/0`.
            #
            #     Use "default_branch" as the branch ID or leave this field empty, to search
            #     products under the default branch.
            #   @param query [::String]
            #     Raw search query.
            #   @param visitor_id [::String]
            #     Required. A unique identifier for tracking visitors. For example, this
            #     could be implemented with an HTTP cookie, which should be able to uniquely
            #     identify a visitor on a single device. This unique identifier should not
            #     change if the visitor logs in or out of the website.
            #
            #     The field must be a UTF-8 encoded string with a length limit of 128
            #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
            #   @param user_info [::Google::Cloud::Retail::V2::UserInfo, ::Hash]
            #     User information.
            #   @param page_size [::Integer]
            #     Maximum number of {::Google::Cloud::Retail::V2::Product Product}s to return. If
            #     unspecified, defaults to a reasonable value. The maximum allowed value is
            #     120. Values above 120 will be coerced to 120.
            #
            #     If this field is negative, an INVALID_ARGUMENT is returned.
            #   @param page_token [::String]
            #     A page token
            #     {::Google::Cloud::Retail::V2::SearchResponse#next_page_token SearchResponse.next_page_token},
            #     received from a previous
            #     {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search} call.
            #     Provide this to retrieve the subsequent page.
            #
            #     When paginating, all other parameters provided to
            #     {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search} must
            #     match the call that provided the page token. Otherwise, an INVALID_ARGUMENT
            #     error is returned.
            #   @param offset [::Integer]
            #     A 0-indexed integer that specifies the current offset (that is, starting
            #     result location, amongst the {::Google::Cloud::Retail::V2::Product Product}s
            #     deemed by the API as relevant) in search results. This field is only
            #     considered if {::Google::Cloud::Retail::V2::SearchRequest#page_token page_token}
            #     is unset.
            #
            #     If this field is negative, an INVALID_ARGUMENT is returned.
            #   @param filter [::String]
            #     The filter syntax consists of an expression language for constructing a
            #     predicate from one or more fields of the products being filtered. Filter
            #     expression is case-sensitive. See more details at this [user
            #     guide](/retail/private/docs/filter-and-order#filter).
            #
            #     If this field is unrecognizable, an INVALID_ARGUMENT is returned.
            #   @param canonical_filter [::String]
            #     The filter applied to every search request when quality improvement such as
            #     query expansion is needed. For example, if a query does not have enough
            #     results, an expanded query with
            #     {::Google::Cloud::Retail::V2::SearchRequest#canonical_filter SearchRequest.canonical_filter}
            #     will be returned as a supplement of the original query. This field is
            #     strongly recommended to achieve high search quality.
            #
            #     See {::Google::Cloud::Retail::V2::SearchRequest#filter SearchRequest.filter} for
            #     more details about filter syntax.
            #   @param order_by [::String]
            #     The order in which products are returned. Products can be ordered by
            #     a field in an {::Google::Cloud::Retail::V2::Product Product} object. Leave it
            #     unset if ordered by relevance. OrderBy expression is case-sensitive. See
            #     more details at this [user
            #     guide](/retail/private/docs/filter-and-order#order).
            #
            #     If this field is unrecognizable, an INVALID_ARGUMENT is returned.
            #   @param facet_specs [::Array<::Google::Cloud::Retail::V2::SearchRequest::FacetSpec, ::Hash>]
            #     Facet specifications for faceted search. If empty, no facets are returned.
            #
            #     A maximum of 100 values are allowed. Otherwise, an INVALID_ARGUMENT error
            #     is returned.
            #   @param dynamic_facet_spec [::Google::Cloud::Retail::V2::SearchRequest::DynamicFacetSpec, ::Hash]
            #     The specification for dynamically generated facets. Notice that only
            #     textual facets can be dynamically generated.
            #
            #     This feature requires additional allowlisting. Contact Retail Support
            #     (retail-search-support@google.com) if you are interested in using dynamic
            #     facet feature.
            #   @param boost_spec [::Google::Cloud::Retail::V2::SearchRequest::BoostSpec, ::Hash]
            #     Boost specification to boost certain products. See more details at this
            #     [user guide](/retail/private/docs/boosting).
            #   @param query_expansion_spec [::Google::Cloud::Retail::V2::SearchRequest::QueryExpansionSpec, ::Hash]
            #     The query expansion specification that specifies the conditions under which
            #     query expansion will occur. See more details at this [user
            #     guide](/retail/private/docs/result-size#query_expansion).
            #   @param variant_rollup_keys [::Array<::String>]
            #     The keys to fetch and rollup the matching
            #     {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
            #     {::Google::Cloud::Retail::V2::Product Product}s attributes. The attributes from
            #     all the matching {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
            #     {::Google::Cloud::Retail::V2::Product Product}s are merged and de-duplicated.
            #     Notice that rollup {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
            #     {::Google::Cloud::Retail::V2::Product Product}s attributes will lead to extra
            #     query latency. Maximum number of keys is 10.
            #
            #     For
            #     {::Google::Cloud::Retail::V2::Product#fulfillment_info Product.fulfillment_info},
            #     a fulfillment type and a fulfillment ID must be provided in the format of
            #     "fulfillmentType.filfillmentId". E.g., in "pickupInStore.store123",
            #     "pickupInStore" is fulfillment type and "store123" is the store ID.
            #
            #     Supported keys are:
            #
            #     * colorFamilies
            #     * price
            #     * originalPrice
            #     * discount
            #     * attributes.key, where key is any key in the
            #       {::Google::Cloud::Retail::V2::Product#attributes Product.attributes} map.
            #     * pickupInStore.id, where id is any [FulfillmentInfo.ids][] for type
            #       [FulfillmentInfo.Type.PICKUP_IN_STORE][].
            #     * shipToStore.id, where id is any [FulfillmentInfo.ids][] for type
            #       [FulfillmentInfo.Type.SHIP_TO_STORE][].
            #     * sameDayDelivery.id, where id is any [FulfillmentInfo.ids][] for type
            #       [FulfillmentInfo.Type.SAME_DAY_DELIVERY][].
            #     * nextDayDelivery.id, where id is any [FulfillmentInfo.ids][] for type
            #       [FulfillmentInfo.Type.NEXT_DAY_DELIVERY][].
            #     * customFulfillment1.id, where id is any [FulfillmentInfo.ids][] for type
            #       [FulfillmentInfo.Type.CUSTOM_TYPE_1][].
            #     * customFulfillment2.id, where id is any [FulfillmentInfo.ids][] for type
            #       [FulfillmentInfo.Type.CUSTOM_TYPE_2][].
            #     * customFulfillment3.id, where id is any [FulfillmentInfo.ids][] for type
            #       [FulfillmentInfo.Type.CUSTOM_TYPE_3][].
            #     * customFulfillment4.id, where id is any [FulfillmentInfo.ids][] for type
            #       [FulfillmentInfo.Type.CUSTOM_TYPE_4][].
            #     * customFulfillment5.id, where id is any [FulfillmentInfo.ids][] for type
            #       [FulfillmentInfo.Type.CUSTOM_TYPE_5][].
            #
            #     If this field is set to an invalid value other than these, an
            #     INVALID_ARGUMENT error is returned.
            #   @param page_categories [::Array<::String>]
            #     The categories associated with a category page. Required for category
            #     navigation queries to achieve good search quality. The format should be
            #     the same as
            #     {::Google::Cloud::Retail::V2::UserEvent#page_categories UserEvent.page_categories};
            #
            #     To represent full path of category, use '>' sign to separate different
            #     hierarchies. If '>' is part of the category name, please replace it with
            #     other character(s).
            #
            #     Category pages include special pages such as sales or promotions. For
            #     instance, a special sale page may have the category hierarchy:
            #     "pageCategories" : ["Sales > 2017 Black Friday Deals"].
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::Retail::V2::SearchResponse::SearchResult>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::Retail::V2::SearchResponse::SearchResult>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def search request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Retail::V2::SearchRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.search.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Retail::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "placement" => request.placement
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.search.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.search.retry_policy
              options.apply_defaults metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @search_service_stub.call_rpc :search, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @search_service_stub, :search, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the SearchService API.
            #
            # This class represents the configuration for SearchService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Retail::V2::SearchService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # # Examples
            #
            # To modify the global config, setting the timeout for search
            # to 20 seconds, and all remaining timeouts to 10 seconds:
            #
            #     ::Google::Cloud::Retail::V2::SearchService::Client.configure do |config|
            #       config.timeout = 10.0
            #       config.rpcs.search.timeout = 20.0
            #     end
            #
            # To apply the above configuration only to a new client:
            #
            #     client = ::Google::Cloud::Retail::V2::SearchService::Client.new do |config|
            #       config.timeout = 10.0
            #       config.rpcs.search.timeout = 20.0
            #     end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"retail.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "retail.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the SearchService API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `search`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :search

                # @private
                def initialize parent_rpcs = nil
                  search_config = parent_rpcs.search if parent_rpcs.respond_to? :search
                  @search = ::Gapic::Config::Method.new search_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end