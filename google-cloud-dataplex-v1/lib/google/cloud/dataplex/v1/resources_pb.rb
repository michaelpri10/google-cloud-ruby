# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataplex/v1/resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dataplex/v1/resources.proto", :syntax => :proto3) do
    add_message "google.cloud.dataplex.v1.Lake" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :uid, :string, 3
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :update_time, :message, 5, "google.protobuf.Timestamp"
      map :labels, :string, :string, 6
      optional :description, :string, 7
      optional :state, :enum, 8, "google.cloud.dataplex.v1.State"
      optional :service_account, :string, 9
      optional :metastore, :message, 102, "google.cloud.dataplex.v1.Lake.Metastore"
      optional :asset_status, :message, 103, "google.cloud.dataplex.v1.AssetStatus"
      optional :metastore_status, :message, 104, "google.cloud.dataplex.v1.Lake.MetastoreStatus"
    end
    add_message "google.cloud.dataplex.v1.Lake.Metastore" do
      optional :service, :string, 1
    end
    add_message "google.cloud.dataplex.v1.Lake.MetastoreStatus" do
      optional :state, :enum, 1, "google.cloud.dataplex.v1.Lake.MetastoreStatus.State"
      optional :message, :string, 2
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      optional :endpoint, :string, 4
    end
    add_enum "google.cloud.dataplex.v1.Lake.MetastoreStatus.State" do
      value :STATE_UNSPECIFIED, 0
      value :NONE, 1
      value :READY, 2
      value :UPDATING, 3
      value :ERROR, 4
    end
    add_message "google.cloud.dataplex.v1.AssetStatus" do
      optional :update_time, :message, 1, "google.protobuf.Timestamp"
      optional :active_assets, :int32, 2
      optional :security_policy_applying_assets, :int32, 3
    end
    add_message "google.cloud.dataplex.v1.Zone" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :uid, :string, 3
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :update_time, :message, 5, "google.protobuf.Timestamp"
      map :labels, :string, :string, 6
      optional :description, :string, 7
      optional :state, :enum, 8, "google.cloud.dataplex.v1.State"
      optional :type, :enum, 9, "google.cloud.dataplex.v1.Zone.Type"
      optional :discovery_spec, :message, 103, "google.cloud.dataplex.v1.Zone.DiscoverySpec"
      optional :resource_spec, :message, 104, "google.cloud.dataplex.v1.Zone.ResourceSpec"
      optional :asset_status, :message, 105, "google.cloud.dataplex.v1.AssetStatus"
    end
    add_message "google.cloud.dataplex.v1.Zone.ResourceSpec" do
      optional :location_type, :enum, 1, "google.cloud.dataplex.v1.Zone.ResourceSpec.LocationType"
    end
    add_enum "google.cloud.dataplex.v1.Zone.ResourceSpec.LocationType" do
      value :LOCATION_TYPE_UNSPECIFIED, 0
      value :SINGLE_REGION, 1
      value :MULTI_REGION, 2
    end
    add_message "google.cloud.dataplex.v1.Zone.DiscoverySpec" do
      optional :enabled, :bool, 1
      repeated :include_patterns, :string, 2
      repeated :exclude_patterns, :string, 3
      optional :csv_options, :message, 4, "google.cloud.dataplex.v1.Zone.DiscoverySpec.CsvOptions"
      optional :json_options, :message, 5, "google.cloud.dataplex.v1.Zone.DiscoverySpec.JsonOptions"
      oneof :trigger do
        optional :schedule, :string, 10
      end
    end
    add_message "google.cloud.dataplex.v1.Zone.DiscoverySpec.CsvOptions" do
      optional :header_rows, :int32, 1
      optional :delimiter, :string, 2
      optional :encoding, :string, 3
      optional :disable_type_inference, :bool, 4
    end
    add_message "google.cloud.dataplex.v1.Zone.DiscoverySpec.JsonOptions" do
      optional :encoding, :string, 1
      optional :disable_type_inference, :bool, 2
    end
    add_enum "google.cloud.dataplex.v1.Zone.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :RAW, 1
      value :CURATED, 2
    end
    add_message "google.cloud.dataplex.v1.Action" do
      optional :category, :enum, 1, "google.cloud.dataplex.v1.Action.Category"
      optional :issue, :string, 2
      optional :detect_time, :message, 4, "google.protobuf.Timestamp"
      optional :name, :string, 5
      optional :lake, :string, 6
      optional :zone, :string, 7
      optional :asset, :string, 8
      repeated :data_locations, :string, 9
      oneof :details do
        optional :invalid_data_format, :message, 10, "google.cloud.dataplex.v1.Action.InvalidDataFormat"
        optional :incompatible_data_schema, :message, 11, "google.cloud.dataplex.v1.Action.IncompatibleDataSchema"
        optional :invalid_data_partition, :message, 12, "google.cloud.dataplex.v1.Action.InvalidDataPartition"
        optional :missing_data, :message, 13, "google.cloud.dataplex.v1.Action.MissingData"
        optional :missing_resource, :message, 14, "google.cloud.dataplex.v1.Action.MissingResource"
        optional :unauthorized_resource, :message, 15, "google.cloud.dataplex.v1.Action.UnauthorizedResource"
        optional :failed_security_policy_apply, :message, 21, "google.cloud.dataplex.v1.Action.FailedSecurityPolicyApply"
        optional :invalid_data_organization, :message, 22, "google.cloud.dataplex.v1.Action.InvalidDataOrganization"
      end
    end
    add_message "google.cloud.dataplex.v1.Action.MissingResource" do
    end
    add_message "google.cloud.dataplex.v1.Action.UnauthorizedResource" do
    end
    add_message "google.cloud.dataplex.v1.Action.FailedSecurityPolicyApply" do
      optional :asset, :string, 1
    end
    add_message "google.cloud.dataplex.v1.Action.InvalidDataFormat" do
      repeated :sampled_data_locations, :string, 1
      optional :expected_format, :string, 2
      optional :new_format, :string, 3
    end
    add_message "google.cloud.dataplex.v1.Action.IncompatibleDataSchema" do
      optional :table, :string, 1
      optional :existing_schema, :string, 2
      optional :new_schema, :string, 3
      repeated :sampled_data_locations, :string, 4
      optional :schema_change, :enum, 5, "google.cloud.dataplex.v1.Action.IncompatibleDataSchema.SchemaChange"
    end
    add_enum "google.cloud.dataplex.v1.Action.IncompatibleDataSchema.SchemaChange" do
      value :SCHEMA_CHANGE_UNSPECIFIED, 0
      value :INCOMPATIBLE, 1
      value :MODIFIED, 2
    end
    add_message "google.cloud.dataplex.v1.Action.InvalidDataPartition" do
      optional :expected_structure, :enum, 1, "google.cloud.dataplex.v1.Action.InvalidDataPartition.PartitionStructure"
    end
    add_enum "google.cloud.dataplex.v1.Action.InvalidDataPartition.PartitionStructure" do
      value :PARTITION_STRUCTURE_UNSPECIFIED, 0
      value :CONSISTENT_KEYS, 1
      value :HIVE_STYLE_KEYS, 2
    end
    add_message "google.cloud.dataplex.v1.Action.MissingData" do
    end
    add_message "google.cloud.dataplex.v1.Action.InvalidDataOrganization" do
    end
    add_enum "google.cloud.dataplex.v1.Action.Category" do
      value :CATEGORY_UNSPECIFIED, 0
      value :RESOURCE_MANAGEMENT, 1
      value :SECURITY_POLICY, 2
      value :DATA_DISCOVERY, 3
    end
    add_message "google.cloud.dataplex.v1.Asset" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :uid, :string, 3
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :update_time, :message, 5, "google.protobuf.Timestamp"
      map :labels, :string, :string, 6
      optional :description, :string, 7
      optional :state, :enum, 8, "google.cloud.dataplex.v1.State"
      optional :resource_spec, :message, 100, "google.cloud.dataplex.v1.Asset.ResourceSpec"
      optional :resource_status, :message, 101, "google.cloud.dataplex.v1.Asset.ResourceStatus"
      optional :security_status, :message, 103, "google.cloud.dataplex.v1.Asset.SecurityStatus"
      optional :discovery_spec, :message, 106, "google.cloud.dataplex.v1.Asset.DiscoverySpec"
      optional :discovery_status, :message, 107, "google.cloud.dataplex.v1.Asset.DiscoveryStatus"
    end
    add_message "google.cloud.dataplex.v1.Asset.SecurityStatus" do
      optional :state, :enum, 1, "google.cloud.dataplex.v1.Asset.SecurityStatus.State"
      optional :message, :string, 2
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.dataplex.v1.Asset.SecurityStatus.State" do
      value :STATE_UNSPECIFIED, 0
      value :READY, 1
      value :APPLYING, 2
      value :ERROR, 3
    end
    add_message "google.cloud.dataplex.v1.Asset.DiscoverySpec" do
      optional :enabled, :bool, 1
      repeated :include_patterns, :string, 2
      repeated :exclude_patterns, :string, 3
      optional :csv_options, :message, 4, "google.cloud.dataplex.v1.Asset.DiscoverySpec.CsvOptions"
      optional :json_options, :message, 5, "google.cloud.dataplex.v1.Asset.DiscoverySpec.JsonOptions"
      oneof :trigger do
        optional :schedule, :string, 10
      end
    end
    add_message "google.cloud.dataplex.v1.Asset.DiscoverySpec.CsvOptions" do
      optional :header_rows, :int32, 1
      optional :delimiter, :string, 2
      optional :encoding, :string, 3
      optional :disable_type_inference, :bool, 4
    end
    add_message "google.cloud.dataplex.v1.Asset.DiscoverySpec.JsonOptions" do
      optional :encoding, :string, 1
      optional :disable_type_inference, :bool, 2
    end
    add_message "google.cloud.dataplex.v1.Asset.ResourceSpec" do
      optional :name, :string, 1
      optional :type, :enum, 2, "google.cloud.dataplex.v1.Asset.ResourceSpec.Type"
    end
    add_enum "google.cloud.dataplex.v1.Asset.ResourceSpec.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :STORAGE_BUCKET, 1
      value :BIGQUERY_DATASET, 2
    end
    add_message "google.cloud.dataplex.v1.Asset.ResourceStatus" do
      optional :state, :enum, 1, "google.cloud.dataplex.v1.Asset.ResourceStatus.State"
      optional :message, :string, 2
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.dataplex.v1.Asset.ResourceStatus.State" do
      value :STATE_UNSPECIFIED, 0
      value :READY, 1
      value :ERROR, 2
    end
    add_message "google.cloud.dataplex.v1.Asset.DiscoveryStatus" do
      optional :state, :enum, 1, "google.cloud.dataplex.v1.Asset.DiscoveryStatus.State"
      optional :message, :string, 2
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      optional :last_run_time, :message, 4, "google.protobuf.Timestamp"
      optional :stats, :message, 6, "google.cloud.dataplex.v1.Asset.DiscoveryStatus.Stats"
      optional :last_run_duration, :message, 7, "google.protobuf.Duration"
    end
    add_message "google.cloud.dataplex.v1.Asset.DiscoveryStatus.Stats" do
      optional :data_items, :int64, 1
      optional :data_size, :int64, 2
      optional :tables, :int64, 3
      optional :filesets, :int64, 4
    end
    add_enum "google.cloud.dataplex.v1.Asset.DiscoveryStatus.State" do
      value :STATE_UNSPECIFIED, 0
      value :SCHEDULED, 1
      value :IN_PROGRESS, 2
      value :PAUSED, 3
      value :DISABLED, 5
    end
    add_enum "google.cloud.dataplex.v1.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :CREATING, 2
      value :DELETING, 3
      value :ACTION_REQUIRED, 4
    end
  end
end

module Google
  module Cloud
    module Dataplex
      module V1
        Lake = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Lake").msgclass
        Lake::Metastore = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Lake.Metastore").msgclass
        Lake::MetastoreStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Lake.MetastoreStatus").msgclass
        Lake::MetastoreStatus::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Lake.MetastoreStatus.State").enummodule
        AssetStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.AssetStatus").msgclass
        Zone = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Zone").msgclass
        Zone::ResourceSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Zone.ResourceSpec").msgclass
        Zone::ResourceSpec::LocationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Zone.ResourceSpec.LocationType").enummodule
        Zone::DiscoverySpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Zone.DiscoverySpec").msgclass
        Zone::DiscoverySpec::CsvOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Zone.DiscoverySpec.CsvOptions").msgclass
        Zone::DiscoverySpec::JsonOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Zone.DiscoverySpec.JsonOptions").msgclass
        Zone::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Zone.Type").enummodule
        Action = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Action").msgclass
        Action::MissingResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Action.MissingResource").msgclass
        Action::UnauthorizedResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Action.UnauthorizedResource").msgclass
        Action::FailedSecurityPolicyApply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Action.FailedSecurityPolicyApply").msgclass
        Action::InvalidDataFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Action.InvalidDataFormat").msgclass
        Action::IncompatibleDataSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Action.IncompatibleDataSchema").msgclass
        Action::IncompatibleDataSchema::SchemaChange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Action.IncompatibleDataSchema.SchemaChange").enummodule
        Action::InvalidDataPartition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Action.InvalidDataPartition").msgclass
        Action::InvalidDataPartition::PartitionStructure = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Action.InvalidDataPartition.PartitionStructure").enummodule
        Action::MissingData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Action.MissingData").msgclass
        Action::InvalidDataOrganization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Action.InvalidDataOrganization").msgclass
        Action::Category = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Action.Category").enummodule
        Asset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Asset").msgclass
        Asset::SecurityStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Asset.SecurityStatus").msgclass
        Asset::SecurityStatus::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Asset.SecurityStatus.State").enummodule
        Asset::DiscoverySpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Asset.DiscoverySpec").msgclass
        Asset::DiscoverySpec::CsvOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Asset.DiscoverySpec.CsvOptions").msgclass
        Asset::DiscoverySpec::JsonOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Asset.DiscoverySpec.JsonOptions").msgclass
        Asset::ResourceSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Asset.ResourceSpec").msgclass
        Asset::ResourceSpec::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Asset.ResourceSpec.Type").enummodule
        Asset::ResourceStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Asset.ResourceStatus").msgclass
        Asset::ResourceStatus::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Asset.ResourceStatus.State").enummodule
        Asset::DiscoveryStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Asset.DiscoveryStatus").msgclass
        Asset::DiscoveryStatus::Stats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Asset.DiscoveryStatus.Stats").msgclass
        Asset::DiscoveryStatus::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Asset.DiscoveryStatus.State").enummodule
        State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.State").enummodule
      end
    end
  end
end
