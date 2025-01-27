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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/channel/v1/version"

require "google/cloud/channel/v1/cloud_channel_service/credentials"
require "google/cloud/channel/v1/cloud_channel_service/paths"
require "google/cloud/channel/v1/cloud_channel_service/operations"
require "google/cloud/channel/v1/cloud_channel_service/client"

module Google
  module Cloud
    module Channel
      module V1
        ##
        # CloudChannelService lets Google cloud resellers and distributors manage
        # their customers, channel partners, entitlements, and reports.
        #
        # Using this service:
        # 1. Resellers and distributors can manage a customer entity.
        # 2. Distributors can register an authorized reseller in their channel and
        #    provide them with delegated admin access.
        # 3. Resellers and distributors can manage customer entitlements.
        #
        # CloudChannelService exposes the following resources:
        # - {::Google::Cloud::Channel::V1::Customer Customer}s: An entity-usually an
        # enterprise-managed by a reseller or distributor.
        #
        # - {::Google::Cloud::Channel::V1::Entitlement Entitlement}s: An entity that
        # provides a customer with the means to use a service. Entitlements are created
        # or updated as a result of a successful fulfillment.
        #
        # - {::Google::Cloud::Channel::V1::ChannelPartnerLink ChannelPartnerLink}s: An
        # entity that identifies links between distributors and their indirect
        # resellers in a channel.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/channel/v1/cloud_channel_service"
        #     client = ::Google::Cloud::Channel::V1::CloudChannelService::Client.new
        #
        module CloudChannelService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "cloud_channel_service", "helpers.rb"
require "google/cloud/channel/v1/cloud_channel_service/helpers" if ::File.file? helper_path
