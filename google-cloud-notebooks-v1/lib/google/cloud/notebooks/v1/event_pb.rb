# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/notebooks/v1/event.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/notebooks/v1/event.proto", :syntax => :proto3) do
    add_message "google.cloud.notebooks.v1.Event" do
      optional :report_time, :message, 1, "google.protobuf.Timestamp"
      optional :type, :enum, 2, "google.cloud.notebooks.v1.Event.EventType"
      map :details, :string, :string, 3
    end
    add_enum "google.cloud.notebooks.v1.Event.EventType" do
      value :EVENT_TYPE_UNSPECIFIED, 0
      value :IDLE, 1
      value :HEARTBEAT, 2
      value :HEALTH, 3
      value :MAINTENANCE, 4
    end
  end
end

module Google
  module Cloud
    module Notebooks
      module V1
        Event = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Event").msgclass
        Event::EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Event.EventType").enummodule
      end
    end
  end
end