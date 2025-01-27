# frozen_string_literal: true

# Copyright 2020 Google LLC
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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/iam/credentials/version"

require "googleauth"

module Google
  module Iam
    module Credentials
      ##
      # Create a new client object for IAMCredentials.
      #
      # By default, this returns an instance of
      # [Google::Iam::Credentials::V1::IAMCredentials::Client](https://googleapis.dev/ruby/google-iam-credentials-v1/latest/Google/Iam/Credentials/V1/IAMCredentials/Client.html)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the IAMCredentials service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About IAMCredentials
      #
      # A service account is a special type of Google account that belongs to your
      # application or a virtual machine (VM), instead of to an individual end user.
      # Your application assumes the identity of the service account to call Google
      # APIs, so that the users aren't directly involved.
      #
      # Service account credentials are used to temporarily assume the identity
      # of the service account. Supported credential types include OAuth 2.0 access
      # tokens, OpenID Connect ID tokens, self-signed JSON Web Tokens (JWTs), and
      # more.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.iam_credentials version: :v1, &block
        require "google/iam/credentials/#{version.to_s.downcase}"

        package_name = Google::Iam::Credentials
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Iam::Credentials.const_get(package_name).const_get(:IAMCredentials)
        service_module.const_get(:Client).new(&block)
      end
    end
  end
end

helper_path = ::File.join __dir__, "credentials", "helpers.rb"
require "google/iam/credentials/helpers" if ::File.file? helper_path
