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


module Google
  module Cloud
    module NetworkSecurity
      module V1beta1
        module NetworkSecurity
          # Path helper methods for the NetworkSecurity API.
          module Paths
            ##
            # Create a fully-qualified AuthorizationPolicy resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/authorizationPolicies/{authorization_policy}`
            #
            # @param project [String]
            # @param location [String]
            # @param authorization_policy [String]
            #
            # @return [::String]
            def authorization_policy_path project:, location:, authorization_policy:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/authorizationPolicies/#{authorization_policy}"
            end

            ##
            # Create a fully-qualified ClientTlsPolicy resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/clientTlsPolicies/{client_tls_policy}`
            #
            # @param project [String]
            # @param location [String]
            # @param client_tls_policy [String]
            #
            # @return [::String]
            def client_tls_policy_path project:, location:, client_tls_policy:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/clientTlsPolicies/#{client_tls_policy}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified ServerTlsPolicy resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/serverTlsPolicies/{server_tls_policy}`
            #
            # @param project [String]
            # @param location [String]
            # @param server_tls_policy [String]
            #
            # @return [::String]
            def server_tls_policy_path project:, location:, server_tls_policy:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/serverTlsPolicies/#{server_tls_policy}"
            end

            extend self
          end
        end
      end
    end
  end
end