# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataplex/v1/logs.proto

require 'google/protobuf'

require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dataplex/v1/logs.proto", :syntax => :proto3) do
    add_message "google.cloud.dataplex.v1.DiscoveryEvent" do
      optional :message, :string, 1
      optional :lake_id, :string, 2
      optional :zone_id, :string, 3
      optional :asset_id, :string, 4
      optional :data_location, :string, 5
      optional :type, :enum, 10, "google.cloud.dataplex.v1.DiscoveryEvent.EventType"
      oneof :details do
        optional :config, :message, 20, "google.cloud.dataplex.v1.DiscoveryEvent.ConfigDetails"
        optional :entity, :message, 21, "google.cloud.dataplex.v1.DiscoveryEvent.EntityDetails"
        optional :partition, :message, 22, "google.cloud.dataplex.v1.DiscoveryEvent.PartitionDetails"
        optional :action, :message, 23, "google.cloud.dataplex.v1.DiscoveryEvent.ActionDetails"
      end
    end
    add_message "google.cloud.dataplex.v1.DiscoveryEvent.ConfigDetails" do
      map :parameters, :string, :string, 1
    end
    add_message "google.cloud.dataplex.v1.DiscoveryEvent.EntityDetails" do
      optional :entity, :string, 1
      optional :type, :enum, 2, "google.cloud.dataplex.v1.DiscoveryEvent.EntityType"
    end
    add_message "google.cloud.dataplex.v1.DiscoveryEvent.PartitionDetails" do
      optional :partition, :string, 1
      optional :entity, :string, 2
      optional :type, :enum, 3, "google.cloud.dataplex.v1.DiscoveryEvent.EntityType"
      repeated :sampled_data_locations, :string, 4
    end
    add_message "google.cloud.dataplex.v1.DiscoveryEvent.ActionDetails" do
      optional :type, :string, 1
    end
    add_enum "google.cloud.dataplex.v1.DiscoveryEvent.EventType" do
      value :EVENT_TYPE_UNSPECIFIED, 0
      value :CONFIG, 1
      value :ENTITY_CREATED, 2
      value :ENTITY_UPDATED, 3
      value :ENTITY_DELETED, 4
      value :PARTITION_CREATED, 5
      value :PARTITION_UPDATED, 6
      value :PARTITION_DELETED, 7
    end
    add_enum "google.cloud.dataplex.v1.DiscoveryEvent.EntityType" do
      value :ENTITY_TYPE_UNSPECIFIED, 0
      value :TABLE, 1
      value :FILESET, 2
    end
    add_message "google.cloud.dataplex.v1.JobEvent" do
      optional :message, :string, 1
      optional :job_id, :string, 2
      optional :start_time, :message, 3, "google.protobuf.Timestamp"
      optional :end_time, :message, 4, "google.protobuf.Timestamp"
      optional :state, :enum, 5, "google.cloud.dataplex.v1.JobEvent.State"
      optional :retries, :int32, 6
      optional :type, :enum, 7, "google.cloud.dataplex.v1.JobEvent.Type"
      optional :service, :enum, 8, "google.cloud.dataplex.v1.JobEvent.Service"
      optional :service_job, :string, 9
    end
    add_enum "google.cloud.dataplex.v1.JobEvent.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :SPARK, 1
      value :NOTEBOOK, 2
    end
    add_enum "google.cloud.dataplex.v1.JobEvent.State" do
      value :STATE_UNSPECIFIED, 0
      value :SUCCEEDED, 1
      value :FAILED, 2
      value :CANCELLED, 3
      value :ABORTED, 4
    end
    add_enum "google.cloud.dataplex.v1.JobEvent.Service" do
      value :SERVICE_UNSPECIFIED, 0
      value :DATAPROC, 1
    end
    add_message "google.cloud.dataplex.v1.SessionEvent" do
      optional :message, :string, 1
      optional :user_id, :string, 2
      optional :session_id, :string, 3
      optional :type, :enum, 4, "google.cloud.dataplex.v1.SessionEvent.EventType"
      optional :event_succeeded, :bool, 6
      optional :fast_startup_enabled, :bool, 7
      optional :unassigned_duration, :message, 8, "google.protobuf.Duration"
      oneof :detail do
        optional :query, :message, 5, "google.cloud.dataplex.v1.SessionEvent.QueryDetail"
      end
    end
    add_message "google.cloud.dataplex.v1.SessionEvent.QueryDetail" do
      optional :query_id, :string, 1
      optional :query_text, :string, 2
      optional :engine, :enum, 3, "google.cloud.dataplex.v1.SessionEvent.QueryDetail.Engine"
      optional :duration, :message, 4, "google.protobuf.Duration"
      optional :result_size_bytes, :int64, 5
      optional :data_processed_bytes, :int64, 6
    end
    add_enum "google.cloud.dataplex.v1.SessionEvent.QueryDetail.Engine" do
      value :ENGINE_UNSPECIFIED, 0
      value :SPARK_SQL, 1
      value :BIGQUERY, 2
    end
    add_enum "google.cloud.dataplex.v1.SessionEvent.EventType" do
      value :EVENT_TYPE_UNSPECIFIED, 0
      value :START, 1
      value :STOP, 2
      value :QUERY, 3
      value :CREATE, 4
    end
  end
end

module Google
  module Cloud
    module Dataplex
      module V1
        DiscoveryEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent").msgclass
        DiscoveryEvent::ConfigDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent.ConfigDetails").msgclass
        DiscoveryEvent::EntityDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent.EntityDetails").msgclass
        DiscoveryEvent::PartitionDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent.PartitionDetails").msgclass
        DiscoveryEvent::ActionDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent.ActionDetails").msgclass
        DiscoveryEvent::EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent.EventType").enummodule
        DiscoveryEvent::EntityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent.EntityType").enummodule
        JobEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.JobEvent").msgclass
        JobEvent::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.JobEvent.Type").enummodule
        JobEvent::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.JobEvent.State").enummodule
        JobEvent::Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.JobEvent.Service").enummodule
        SessionEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.SessionEvent").msgclass
        SessionEvent::QueryDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.SessionEvent.QueryDetail").msgclass
        SessionEvent::QueryDetail::Engine = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.SessionEvent.QueryDetail.Engine").enummodule
        SessionEvent::EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.SessionEvent.EventType").enummodule
      end
    end
  end
end
