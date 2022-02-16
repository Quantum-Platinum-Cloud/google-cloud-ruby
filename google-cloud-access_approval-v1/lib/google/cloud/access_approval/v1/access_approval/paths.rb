# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module AccessApproval
      module V1
        module AccessApproval
          # Path helper methods for the AccessApproval API.
          module Paths
            ##
            # Create a fully-qualified AccessApprovalSettings resource string.
            #
            # @overload access_approval_settings_path(project:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/accessApprovalSettings`
            #
            #   @param project [String]
            #
            # @overload access_approval_settings_path(folder:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/accessApprovalSettings`
            #
            #   @param folder [String]
            #
            # @overload access_approval_settings_path(organization:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/accessApprovalSettings`
            #
            #   @param organization [String]
            #
            # @return [::String]
            def access_approval_settings_path **args
              resources = {
                "project" => (proc do |project:|
                  "projects/#{project}/accessApprovalSettings"
                end),
                "folder" => (proc do |folder:|
                  "folders/#{folder}/accessApprovalSettings"
                end),
                "organization" => (proc do |organization:|
                  "organizations/#{organization}/accessApprovalSettings"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified ApprovalRequest resource string.
            #
            # @overload approval_request_path(project:, approval_request:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/approvalRequests/{approval_request}`
            #
            #   @param project [String]
            #   @param approval_request [String]
            #
            # @overload approval_request_path(folder:, approval_request:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/approvalRequests/{approval_request}`
            #
            #   @param folder [String]
            #   @param approval_request [String]
            #
            # @overload approval_request_path(organization:, approval_request:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/approvalRequests/{approval_request}`
            #
            #   @param organization [String]
            #   @param approval_request [String]
            #
            # @return [::String]
            def approval_request_path **args
              resources = {
                "approval_request:project" => (proc do |project:, approval_request:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/approvalRequests/#{approval_request}"
                end),
                "approval_request:folder" => (proc do |folder:, approval_request:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"

                  "folders/#{folder}/approvalRequests/#{approval_request}"
                end),
                "approval_request:organization" => (proc do |organization:, approval_request:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"

                  "organizations/#{organization}/approvalRequests/#{approval_request}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Folder resource string.
            #
            # The resource will be in the following format:
            #
            # `folders/{folder}`
            #
            # @param folder [String]
            #
            # @return [::String]
            def folder_path folder:
              "folders/#{folder}"
            end

            ##
            # Create a fully-qualified Organization resource string.
            #
            # The resource will be in the following format:
            #
            # `organizations/{organization}`
            #
            # @param organization [String]
            #
            # @return [::String]
            def organization_path organization:
              "organizations/#{organization}"
            end

            ##
            # Create a fully-qualified Project resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}`
            #
            # @param project [String]
            #
            # @return [::String]
            def project_path project:
              "projects/#{project}"
            end

            extend self
          end
        end
      end
    end
  end
end