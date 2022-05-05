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
    module Monitoring
      module Dashboard
        module V1
          # A table that displays time series data.
          # @!attribute [rw] data_sets
          #   @return [::Array<::Google::Cloud::Monitoring::Dashboard::V1::TimeSeriesTable::TableDataSet>]
          #     Required. The data displayed in this table.
          class TimeSeriesTable
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Groups a time series query definition with table options.
            # @!attribute [rw] time_series_query
            #   @return [::Google::Cloud::Monitoring::Dashboard::V1::TimeSeriesQuery]
            #     Required. Fields for querying time series data from the
            #     Stackdriver metrics API.
            # @!attribute [rw] table_template
            #   @return [::String]
            #     Optional. A template string for naming `TimeSeries` in the resulting data set.
            #     This should be a string with interpolations of the form `${label_name}`,
            #     which will resolve to the label's value i.e.
            #     "$\\{resource.labels.project_id}."
            # @!attribute [rw] min_alignment_period
            #   @return [::Google::Protobuf::Duration]
            #     Optional. The lower bound on data point frequency for this data set, implemented by
            #     specifying the minimum alignment period to use in a time series query
            #     For example, if the data is published once every 10 minutes, the
            #     `min_alignment_period` should be at least 10 minutes. It would not
            #     make sense to fetch and align data at one minute intervals.
            # @!attribute [rw] table_display_options
            #   @return [::Google::Cloud::Monitoring::Dashboard::V1::TableDisplayOptions]
            #     Optional. Table display options for configuring how the table is rendered.
            class TableDataSet
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end
      end
    end
  end
end