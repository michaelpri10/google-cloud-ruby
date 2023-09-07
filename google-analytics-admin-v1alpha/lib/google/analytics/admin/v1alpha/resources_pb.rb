# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/analytics/admin/v1alpha/resources.proto

require 'google/protobuf'

require 'google/analytics/admin/v1alpha/audience_pb'
require 'google/analytics/admin/v1alpha/channel_group_pb'
require 'google/analytics/admin/v1alpha/event_create_and_edit_pb'
require 'google/analytics/admin/v1alpha/expanded_data_set_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'


descriptor_data = "\n.google/analytics/admin/v1alpha/resources.proto\x12\x1egoogle.analytics.admin.v1alpha\x1a-google/analytics/admin/v1alpha/audience.proto\x1a\x32google/analytics/admin/v1alpha/channel_group.proto\x1a:google/analytics/admin/v1alpha/event_create_and_edit.proto\x1a\x36google/analytics/admin/v1alpha/expanded_data_set.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1egoogle/protobuf/wrappers.proto\"\x8e\x02\n\x07\x41\x63\x63ount\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0bregion_code\x18\x05 \x01(\t\x12\x14\n\x07\x64\x65leted\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03:>\xea\x41;\n%analyticsadmin.googleapis.com/Account\x12\x12\x61\x63\x63ounts/{account}\"\xb9\x05\n\x08Property\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12H\n\rproperty_type\x18\x0e \x01(\x0e\x32,.google.analytics.admin.v1alpha.PropertyTypeB\x03\xe0\x41\x05\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06parent\x18\x02 \x01(\tB\x03\xe0\x41\x05\x12\x19\n\x0c\x64isplay_name\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12K\n\x11industry_category\x18\x06 \x01(\x0e\x32\x30.google.analytics.admin.v1alpha.IndustryCategory\x12\x16\n\ttime_zone\x18\x07 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\rcurrency_code\x18\x08 \x01(\t\x12H\n\rservice_level\x18\n \x01(\x0e\x32,.google.analytics.admin.v1alpha.ServiceLevelB\x03\xe0\x41\x03\x12\x34\n\x0b\x64\x65lete_time\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x65xpire_time\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12>\n\x07\x61\x63\x63ount\x18\r \x01(\tB-\xe0\x41\x05\xfa\x41\'\n%analyticsadmin.googleapis.com/Account:B\xea\x41?\n&analyticsadmin.googleapis.com/Property\x12\x15properties/{property}\"\xf4\x07\n\nDataStream\x12S\n\x0fweb_stream_data\x18\x06 \x01(\x0b\x32\x38.google.analytics.admin.v1alpha.DataStream.WebStreamDataH\x00\x12\x62\n\x17\x61ndroid_app_stream_data\x18\x07 \x01(\x0b\x32?.google.analytics.admin.v1alpha.DataStream.AndroidAppStreamDataH\x00\x12Z\n\x13ios_app_stream_data\x18\x08 \x01(\x0b\x32;.google.analytics.admin.v1alpha.DataStream.IosAppStreamDataH\x00\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12O\n\x04type\x18\x02 \x01(\x0e\x32\x39.google.analytics.admin.v1alpha.DataStream.DataStreamTypeB\x06\xe0\x41\x05\xe0\x41\x02\x12\x14\n\x0c\x64isplay_name\x18\x03 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x1a_\n\rWebStreamData\x12\x1b\n\x0emeasurement_id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1c\n\x0f\x66irebase_app_id\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65\x66\x61ult_uri\x18\x03 \x01(\t\x1aO\n\x14\x41ndroidAppStreamData\x12\x1c\n\x0f\x66irebase_app_id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0cpackage_name\x18\x02 \x01(\tB\x03\xe0\x41\x05\x1aK\n\x10IosAppStreamData\x12\x1c\n\x0f\x66irebase_app_id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\tbundle_id\x18\x02 \x01(\tB\x06\xe0\x41\x05\xe0\x41\x02\"}\n\x0e\x44\x61taStreamType\x12 \n\x1c\x44\x41TA_STREAM_TYPE_UNSPECIFIED\x10\x00\x12\x13\n\x0fWEB_DATA_STREAM\x10\x01\x12\x1b\n\x17\x41NDROID_APP_DATA_STREAM\x10\x02\x12\x17\n\x13IOS_APP_DATA_STREAM\x10\x03:^\xea\x41[\n(analyticsadmin.googleapis.com/DataStream\x12/properties/{property}/dataStreams/{data_stream}B\r\n\x0bstream_data\"\xd4\x01\n\x08UserLink\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\remail_address\x18\x02 \x01(\tB\x03\xe0\x41\x05\x12\x14\n\x0c\x64irect_roles\x18\x03 \x03(\t:\x82\x01\xea\x41\x7f\n&analyticsadmin.googleapis.com/UserLink\x12(accounts/{account}/userLinks/{user_link}\x12+properties/{property}/userLinks/{user_link}\"c\n\rAuditUserLink\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x15\n\remail_address\x18\x02 \x01(\t\x12\x14\n\x0c\x64irect_roles\x18\x03 \x03(\t\x12\x17\n\x0f\x65\x66\x66\x65\x63tive_roles\x18\x04 \x03(\t\"\xd3\x01\n\x0c\x46irebaseLink\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x07project\x18\x02 \x01(\tB\x03\xe0\x41\x05\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:d\xea\x41\x61\n*analyticsadmin.googleapis.com/FirebaseLink\x12\x33properties/{property}/firebaseLinks/{firebase_link}\"\xa9\x01\n\rGlobalSiteTag\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x07snippet\x18\x02 \x01(\tB\x03\xe0\x41\x05:o\xea\x41l\n+analyticsadmin.googleapis.com/GlobalSiteTag\x12=properties/{property}/dataStreams/{data_stream}/globalSiteTag\"\x98\x03\n\rGoogleAdsLink\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x63ustomer_id\x18\x03 \x01(\tB\x03\xe0\x41\x05\x12\x1f\n\x12\x63\x61n_manage_clients\x18\x04 \x01(\x08\x42\x03\xe0\x41\x03\x12?\n\x1b\x61\x64s_personalization_enabled\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.BoolValue\x12\x34\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\"\n\x15\x63reator_email_address\x18\t \x01(\tB\x03\xe0\x41\x03:h\xea\x41\x65\n+analyticsadmin.googleapis.com/GoogleAdsLink\x12\x36properties/{property}/googleAdsLinks/{google_ads_link}\"\xeb\x02\n\x13\x44\x61taSharingSettings\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12+\n#sharing_with_google_support_enabled\x18\x02 \x01(\x08\x12\x32\n*sharing_with_google_assigned_sales_enabled\x18\x03 \x01(\x08\x12-\n%sharing_with_google_any_sales_enabled\x18\x04 \x01(\x08\x12,\n$sharing_with_google_products_enabled\x18\x05 \x01(\x08\x12#\n\x1bsharing_with_others_enabled\x18\x06 \x01(\x08:^\xea\x41[\n1analyticsadmin.googleapis.com/DataSharingSettings\x12&accounts/{account}/dataSharingSettings\"\x95\x02\n\x0e\x41\x63\x63ountSummary\x12\x0c\n\x04name\x18\x01 \x01(\t\x12;\n\x07\x61\x63\x63ount\x18\x02 \x01(\tB*\xfa\x41\'\n%analyticsadmin.googleapis.com/Account\x12\x14\n\x0c\x64isplay_name\x18\x03 \x01(\t\x12K\n\x12property_summaries\x18\x04 \x03(\x0b\x32/.google.analytics.admin.v1alpha.PropertySummary:U\xea\x41R\n,analyticsadmin.googleapis.com/AccountSummary\x12\"accountSummaries/{account_summary}\"\xbb\x01\n\x0fPropertySummary\x12=\n\x08property\x18\x01 \x01(\tB+\xfa\x41(\n&analyticsadmin.googleapis.com/Property\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x43\n\rproperty_type\x18\x03 \x01(\x0e\x32,.google.analytics.admin.v1alpha.PropertyType\x12\x0e\n\x06parent\x18\x04 \x01(\t\"\x8e\x02\n\x19MeasurementProtocolSecret\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x19\n\x0csecret_value\x18\x03 \x01(\tB\x03\xe0\x41\x03:\xa7\x01\xea\x41\xa3\x01\n7analyticsadmin.googleapis.com/MeasurementProtocolSecret\x12hproperties/{property}/dataStreams/{data_stream}/measurementProtocolSecrets/{measurement_protocol_secret}\"\x83\x04\n SKAdNetworkConversionValueSchema\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12P\n\x13postback_window_one\x18\x02 \x01(\x0b\x32..google.analytics.admin.v1alpha.PostbackWindowB\x03\xe0\x41\x02\x12K\n\x13postback_window_two\x18\x03 \x01(\x0b\x32..google.analytics.admin.v1alpha.PostbackWindow\x12M\n\x15postback_window_three\x18\x04 \x01(\x0b\x32..google.analytics.admin.v1alpha.PostbackWindow\x12\x1f\n\x17\x61pply_conversion_values\x18\x05 \x01(\x08:\xbc\x01\xea\x41\xb8\x01\n>analyticsadmin.googleapis.com/SKAdNetworkConversionValueSchema\x12vproperties/{property}/dataStreams/{data_stream}/sKAdNetworkConversionValueSchema/{skadnetwork_conversion_value_schema}\"\x87\x01\n\x0ePostbackWindow\x12K\n\x11\x63onversion_values\x18\x01 \x03(\x0b\x32\x30.google.analytics.admin.v1alpha.ConversionValues\x12(\n postback_window_settings_enabled\x18\x02 \x01(\x08\"\xf4\x01\n\x10\x43onversionValues\x12\x14\n\x0c\x64isplay_name\x18\x01 \x01(\t\x12\x17\n\nfine_value\x18\x02 \x01(\x05H\x00\x88\x01\x01\x12\x46\n\x0c\x63oarse_value\x18\x03 \x01(\x0e\x32+.google.analytics.admin.v1alpha.CoarseValueB\x03\xe0\x41\x02\x12\x44\n\x0e\x65vent_mappings\x18\x04 \x03(\x0b\x32,.google.analytics.admin.v1alpha.EventMapping\x12\x14\n\x0clock_enabled\x18\x05 \x01(\x08\x42\r\n\x0b_fine_value\"\xef\x01\n\x0c\x45ventMapping\x12\x17\n\nevent_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x1c\n\x0fmin_event_count\x18\x02 \x01(\x03H\x00\x88\x01\x01\x12\x1c\n\x0fmax_event_count\x18\x03 \x01(\x03H\x01\x88\x01\x01\x12\x1c\n\x0fmin_event_value\x18\x04 \x01(\x01H\x02\x88\x01\x01\x12\x1c\n\x0fmax_event_value\x18\x05 \x01(\x01H\x03\x88\x01\x01\x42\x12\n\x10_min_event_countB\x12\n\x10_max_event_countB\x12\n\x10_min_event_valueB\x12\n\x10_max_event_value\"\x8a\x02\n\x12\x43hangeHistoryEvent\x12\n\n\x02id\x18\x01 \x01(\t\x12/\n\x0b\x63hange_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12=\n\nactor_type\x18\x03 \x01(\x0e\x32).google.analytics.admin.v1alpha.ActorType\x12\x18\n\x10user_actor_email\x18\x04 \x01(\t\x12\x18\n\x10\x63hanges_filtered\x18\x05 \x01(\x08\x12\x44\n\x07\x63hanges\x18\x06 \x03(\x0b\x32\x33.google.analytics.admin.v1alpha.ChangeHistoryChange\"\xb6\x11\n\x13\x43hangeHistoryChange\x12\x10\n\x08resource\x18\x01 \x01(\t\x12:\n\x06\x61\x63tion\x18\x02 \x01(\x0e\x32*.google.analytics.admin.v1alpha.ActionType\x12i\n\x16resource_before_change\x18\x03 \x01(\x0b\x32I.google.analytics.admin.v1alpha.ChangeHistoryChange.ChangeHistoryResource\x12h\n\x15resource_after_change\x18\x04 \x01(\x0b\x32I.google.analytics.admin.v1alpha.ChangeHistoryChange.ChangeHistoryResource\x1a\xfb\x0e\n\x15\x43hangeHistoryResource\x12:\n\x07\x61\x63\x63ount\x18\x01 \x01(\x0b\x32\'.google.analytics.admin.v1alpha.AccountH\x00\x12<\n\x08property\x18\x02 \x01(\x0b\x32(.google.analytics.admin.v1alpha.PropertyH\x00\x12\x45\n\rfirebase_link\x18\x06 \x01(\x0b\x32,.google.analytics.admin.v1alpha.FirebaseLinkH\x00\x12H\n\x0fgoogle_ads_link\x18\x07 \x01(\x0b\x32-.google.analytics.admin.v1alpha.GoogleAdsLinkH\x00\x12X\n\x17google_signals_settings\x18\x08 \x01(\x0b\x32\x35.google.analytics.admin.v1alpha.GoogleSignalsSettingsH\x00\x12j\n!display_video_360_advertiser_link\x18\t \x01(\x0b\x32=.google.analytics.admin.v1alpha.DisplayVideo360AdvertiserLinkH\x00\x12{\n*display_video_360_advertiser_link_proposal\x18\n \x01(\x0b\x32\x45.google.analytics.admin.v1alpha.DisplayVideo360AdvertiserLinkProposalH\x00\x12K\n\x10\x63onversion_event\x18\x0b \x01(\x0b\x32/.google.analytics.admin.v1alpha.ConversionEventH\x00\x12`\n\x1bmeasurement_protocol_secret\x18\x0c \x01(\x0b\x32\x39.google.analytics.admin.v1alpha.MeasurementProtocolSecretH\x00\x12K\n\x10\x63ustom_dimension\x18\r \x01(\x0b\x32/.google.analytics.admin.v1alpha.CustomDimensionH\x00\x12\x45\n\rcustom_metric\x18\x0e \x01(\x0b\x32,.google.analytics.admin.v1alpha.CustomMetricH\x00\x12X\n\x17\x64\x61ta_retention_settings\x18\x0f \x01(\x0b\x32\x35.google.analytics.admin.v1alpha.DataRetentionSettingsH\x00\x12O\n\x13search_ads_360_link\x18\x10 \x01(\x0b\x32\x30.google.analytics.admin.v1alpha.SearchAds360LinkH\x00\x12\x41\n\x0b\x64\x61ta_stream\x18\x12 \x01(\x0b\x32*.google.analytics.admin.v1alpha.DataStreamH\x00\x12S\n\x14\x61ttribution_settings\x18\x14 \x01(\x0b\x32\x33.google.analytics.admin.v1alpha.AttributionSettingsH\x00\x12L\n\x11\x65xpanded_data_set\x18\x15 \x01(\x0b\x32/.google.analytics.admin.v1alpha.ExpandedDataSetH\x00\x12\x45\n\rchannel_group\x18\x16 \x01(\x0b\x32,.google.analytics.admin.v1alpha.ChannelGroupH\x00\x12\x45\n\rbigquery_link\x18\x17 \x01(\x0b\x32,.google.analytics.admin.v1alpha.BigQueryLinkH\x00\x12\x64\n\x1d\x65nhanced_measurement_settings\x18\x18 \x01(\x0b\x32;.google.analytics.admin.v1alpha.EnhancedMeasurementSettingsH\x00\x12o\n#skadnetwork_conversion_value_schema\x18\x1a \x01(\x0b\x32@.google.analytics.admin.v1alpha.SKAdNetworkConversionValueSchemaH\x00\x12\x43\n\x0c\x61\x64sense_link\x18\x1b \x01(\x0b\x32+.google.analytics.admin.v1alpha.AdSenseLinkH\x00\x12<\n\x08\x61udience\x18\x1c \x01(\x0b\x32(.google.analytics.admin.v1alpha.AudienceH\x00\x12L\n\x11\x65vent_create_rule\x18\x1d \x01(\x0b\x32/.google.analytics.admin.v1alpha.EventCreateRuleH\x00\x42\n\n\x08resource\"\xdf\x03\n\x1d\x44isplayVideo360AdvertiserLink\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\radvertiser_id\x18\x02 \x01(\tB\x03\xe0\x41\x05\x12$\n\x17\x61\x64vertiser_display_name\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12?\n\x1b\x61\x64s_personalization_enabled\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.BoolValue\x12\x46\n\x1d\x63\x61mpaign_data_sharing_enabled\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.BoolValueB\x03\xe0\x41\x05\x12\x42\n\x19\x63ost_data_sharing_enabled\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.BoolValueB\x03\xe0\x41\x05:\x9b\x01\xea\x41\x97\x01\n;analyticsadmin.googleapis.com/DisplayVideo360AdvertiserLink\x12Xproperties/{property}/displayVideo360AdvertiserLinks/{display_video_360_advertiser_link}\"\x8a\x05\n%DisplayVideo360AdvertiserLinkProposal\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\radvertiser_id\x18\x02 \x01(\tB\x03\xe0\x41\x05\x12\x64\n\x1clink_proposal_status_details\x18\x03 \x01(\x0b\x32\x39.google.analytics.admin.v1alpha.LinkProposalStatusDetailsB\x03\xe0\x41\x03\x12$\n\x17\x61\x64vertiser_display_name\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1d\n\x10validation_email\x18\x05 \x01(\tB\x03\xe0\x41\x04\x12\x44\n\x1b\x61\x64s_personalization_enabled\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.BoolValueB\x03\xe0\x41\x05\x12\x46\n\x1d\x63\x61mpaign_data_sharing_enabled\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.BoolValueB\x03\xe0\x41\x05\x12\x42\n\x19\x63ost_data_sharing_enabled\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.BoolValueB\x03\xe0\x41\x05:\xb4\x01\xea\x41\xb0\x01\nCanalyticsadmin.googleapis.com/DisplayVideo360AdvertiserLinkProposal\x12iproperties/{property}/displayVideo360AdvertiserLinkProposals/{display_video_360_advertiser_link_proposal}\"\xe8\x03\n\x10SearchAds360Link\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\radvertiser_id\x18\x02 \x01(\tB\x03\xe0\x41\x05\x12\x46\n\x1d\x63\x61mpaign_data_sharing_enabled\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.BoolValueB\x03\xe0\x41\x05\x12\x42\n\x19\x63ost_data_sharing_enabled\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.BoolValueB\x03\xe0\x41\x05\x12$\n\x17\x61\x64vertiser_display_name\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12?\n\x1b\x61\x64s_personalization_enabled\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.BoolValue\x12>\n\x1asite_stats_sharing_enabled\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.BoolValue:r\xea\x41o\n.analyticsadmin.googleapis.com/SearchAds360Link\x12=properties/{property}/searchAds360Links/{search_ads_360_link}\"\xfc\x01\n\x19LinkProposalStatusDetails\x12l\n link_proposal_initiating_product\x18\x01 \x01(\x0e\x32=.google.analytics.admin.v1alpha.LinkProposalInitiatingProductB\x03\xe0\x41\x03\x12\x1c\n\x0frequestor_email\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12S\n\x13link_proposal_state\x18\x03 \x01(\x0e\x32\x31.google.analytics.admin.v1alpha.LinkProposalStateB\x03\xe0\x41\x03\"\xe9\x03\n\x0f\x43onversionEvent\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x17\n\nevent_name\x18\x02 \x01(\tB\x03\xe0\x41\x05\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x16\n\tdeletable\x18\x04 \x01(\x08\x42\x03\xe0\x41\x03\x12\x13\n\x06\x63ustom\x18\x05 \x01(\x08\x42\x03\xe0\x41\x03\x12\x66\n\x0f\x63ounting_method\x18\x06 \x01(\x0e\x32H.google.analytics.admin.v1alpha.ConversionEvent.ConversionCountingMethodB\x03\xe0\x41\x01\"p\n\x18\x43onversionCountingMethod\x12*\n&CONVERSION_COUNTING_METHOD_UNSPECIFIED\x10\x00\x12\x12\n\x0eONCE_PER_EVENT\x10\x01\x12\x14\n\x10ONCE_PER_SESSION\x10\x02:m\xea\x41j\n-analyticsadmin.googleapis.com/ConversionEvent\x12\x39properties/{property}/conversionEvents/{conversion_event}\"\xa0\x02\n\x15GoogleSignalsSettings\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x41\n\x05state\x18\x03 \x01(\x0e\x32\x32.google.analytics.admin.v1alpha.GoogleSignalsState\x12J\n\x07\x63onsent\x18\x04 \x01(\x0e\x32\x34.google.analytics.admin.v1alpha.GoogleSignalsConsentB\x03\xe0\x41\x03:e\xea\x41\x62\n3analyticsadmin.googleapis.com/GoogleSignalsSettings\x12+properties/{property}/googleSignalsSettings\"\xbc\x03\n\x0f\x43ustomDimension\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1e\n\x0eparameter_name\x18\x02 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12\x19\n\x0c\x64isplay_name\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x65scription\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12U\n\x05scope\x18\x05 \x01(\x0e\x32>.google.analytics.admin.v1alpha.CustomDimension.DimensionScopeB\x06\xe0\x41\x02\xe0\x41\x05\x12)\n\x1c\x64isallow_ads_personalization\x18\x06 \x01(\x08\x42\x03\xe0\x41\x01\"P\n\x0e\x44imensionScope\x12\x1f\n\x1b\x44IMENSION_SCOPE_UNSPECIFIED\x10\x00\x12\t\n\x05\x45VENT\x10\x01\x12\x08\n\x04USER\x10\x02\x12\x08\n\x04ITEM\x10\x03:m\xea\x41j\n-analyticsadmin.googleapis.com/CustomDimension\x12\x39properties/{property}/customDimensions/{custom_dimension}\"\xc5\x06\n\x0c\x43ustomMetric\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1e\n\x0eparameter_name\x18\x02 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12\x19\n\x0c\x64isplay_name\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x65scription\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12[\n\x10measurement_unit\x18\x05 \x01(\x0e\x32<.google.analytics.admin.v1alpha.CustomMetric.MeasurementUnitB\x03\xe0\x41\x02\x12O\n\x05scope\x18\x06 \x01(\x0e\x32\x38.google.analytics.admin.v1alpha.CustomMetric.MetricScopeB\x06\xe0\x41\x02\xe0\x41\x05\x12\x66\n\x16restricted_metric_type\x18\x08 \x03(\x0e\x32\x41.google.analytics.admin.v1alpha.CustomMetric.RestrictedMetricTypeB\x03\xe0\x41\x01\"\xb7\x01\n\x0fMeasurementUnit\x12 \n\x1cMEASUREMENT_UNIT_UNSPECIFIED\x10\x00\x12\x0c\n\x08STANDARD\x10\x01\x12\x0c\n\x08\x43URRENCY\x10\x02\x12\x08\n\x04\x46\x45\x45T\x10\x03\x12\n\n\x06METERS\x10\x04\x12\x0e\n\nKILOMETERS\x10\x05\x12\t\n\x05MILES\x10\x06\x12\x10\n\x0cMILLISECONDS\x10\x07\x12\x0b\n\x07SECONDS\x10\x08\x12\x0b\n\x07MINUTES\x10\t\x12\t\n\x05HOURS\x10\n\"6\n\x0bMetricScope\x12\x1c\n\x18METRIC_SCOPE_UNSPECIFIED\x10\x00\x12\t\n\x05\x45VENT\x10\x01\"_\n\x14RestrictedMetricType\x12&\n\"RESTRICTED_METRIC_TYPE_UNSPECIFIED\x10\x00\x12\r\n\tCOST_DATA\x10\x01\x12\x10\n\x0cREVENUE_DATA\x10\x02:d\xea\x41\x61\n*analyticsadmin.googleapis.com/CustomMetric\x12\x33properties/{property}/customMetrics/{custom_metric}\"\xc2\x03\n\x15\x44\x61taRetentionSettings\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x65\n\x14\x65vent_data_retention\x18\x02 \x01(\x0e\x32G.google.analytics.admin.v1alpha.DataRetentionSettings.RetentionDuration\x12\'\n\x1freset_user_data_on_new_activity\x18\x03 \x01(\x08\"\x9e\x01\n\x11RetentionDuration\x12\"\n\x1eRETENTION_DURATION_UNSPECIFIED\x10\x00\x12\x0e\n\nTWO_MONTHS\x10\x01\x12\x13\n\x0f\x46OURTEEN_MONTHS\x10\x03\x12\x15\n\x11TWENTY_SIX_MONTHS\x10\x04\x12\x17\n\x13THIRTY_EIGHT_MONTHS\x10\x05\x12\x10\n\x0c\x46IFTY_MONTHS\x10\x06:e\xea\x41\x62\n3analyticsadmin.googleapis.com/DataRetentionSettings\x12+properties/{property}/dataRetentionSettings\"\xa5\r\n\x13\x41ttributionSettings\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x97\x01\n,acquisition_conversion_event_lookback_window\x18\x02 \x01(\x0e\x32\\.google.analytics.admin.v1alpha.AttributionSettings.AcquisitionConversionEventLookbackWindowB\x03\xe0\x41\x02\x12\x8b\x01\n&other_conversion_event_lookback_window\x18\x03 \x01(\x0e\x32V.google.analytics.admin.v1alpha.AttributionSettings.OtherConversionEventLookbackWindowB\x03\xe0\x41\x02\x12w\n\x1breporting_attribution_model\x18\x04 \x01(\x0e\x32M.google.analytics.admin.v1alpha.AttributionSettings.ReportingAttributionModelB\x03\xe0\x41\x02\x12\x86\x01\n$ads_web_conversion_data_export_scope\x18\x05 \x01(\x0e\x32S.google.analytics.admin.v1alpha.AttributionSettings.AdsWebConversionDataExportScopeB\x03\xe0\x41\x02\"\xdb\x01\n(AcquisitionConversionEventLookbackWindow\x12<\n8ACQUISITION_CONVERSION_EVENT_LOOKBACK_WINDOW_UNSPECIFIED\x10\x00\x12\x37\n3ACQUISITION_CONVERSION_EVENT_LOOKBACK_WINDOW_7_DAYS\x10\x01\x12\x38\n4ACQUISITION_CONVERSION_EVENT_LOOKBACK_WINDOW_30_DAYS\x10\x02\"\xf8\x01\n\"OtherConversionEventLookbackWindow\x12\x36\n2OTHER_CONVERSION_EVENT_LOOKBACK_WINDOW_UNSPECIFIED\x10\x00\x12\x32\n.OTHER_CONVERSION_EVENT_LOOKBACK_WINDOW_30_DAYS\x10\x01\x12\x32\n.OTHER_CONVERSION_EVENT_LOOKBACK_WINDOW_60_DAYS\x10\x02\x12\x32\n.OTHER_CONVERSION_EVENT_LOOKBACK_WINDOW_90_DAYS\x10\x03\"\xeb\x02\n\x19ReportingAttributionModel\x12+\n\'REPORTING_ATTRIBUTION_MODEL_UNSPECIFIED\x10\x00\x12)\n%PAID_AND_ORGANIC_CHANNELS_DATA_DRIVEN\x10\x01\x12(\n$PAID_AND_ORGANIC_CHANNELS_LAST_CLICK\x10\x02\x12)\n%PAID_AND_ORGANIC_CHANNELS_FIRST_CLICK\x10\x03\x12$\n PAID_AND_ORGANIC_CHANNELS_LINEAR\x10\x04\x12,\n(PAID_AND_ORGANIC_CHANNELS_POSITION_BASED\x10\x05\x12(\n$PAID_AND_ORGANIC_CHANNELS_TIME_DECAY\x10\x06\x12#\n\x1fGOOGLE_PAID_CHANNELS_LAST_CLICK\x10\x07\"\xa6\x01\n\x1f\x41\x64sWebConversionDataExportScope\x12\x34\n0ADS_WEB_CONVERSION_DATA_EXPORT_SCOPE_UNSPECIFIED\x10\x00\x12\x14\n\x10NOT_SELECTED_YET\x10\x01\x12\x1d\n\x19PAID_AND_ORGANIC_CHANNELS\x10\x02\x12\x18\n\x14GOOGLE_PAID_CHANNELS\x10\x03:a\xea\x41^\n1analyticsadmin.googleapis.com/AttributionSettings\x12)properties/{property}/attributionSettings\"\xf1\x01\n\rAccessBinding\x12\x0e\n\x04user\x18\x02 \x01(\tH\x00\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\r\n\x05roles\x18\x03 \x03(\t:\x9c\x01\xea\x41\x98\x01\n+analyticsadmin.googleapis.com/AccessBinding\x12\x32\x61\x63\x63ounts/{account}/accessBindings/{access_binding}\x12\x35properties/{property}/accessBindings/{access_binding}B\x0f\n\raccess_target\"\x88\x03\n\x0c\x42igQueryLink\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x07project\x18\x02 \x01(\tB\x03\xe0\x41\x05\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x1c\n\x14\x64\x61ily_export_enabled\x18\x04 \x01(\x08\x12 \n\x18streaming_export_enabled\x18\x05 \x01(\x08\x12\"\n\x1a\x66resh_daily_export_enabled\x18\t \x01(\x08\x12\x1e\n\x16include_advertising_id\x18\x06 \x01(\x08\x12\x16\n\x0e\x65xport_streams\x18\x07 \x03(\t\x12\x17\n\x0f\x65xcluded_events\x18\x08 \x03(\t:d\xea\x41\x61\n*analyticsadmin.googleapis.com/BigQueryLink\x12\x33properties/{property}/bigQueryLinks/{bigquery_link}\"\xf3\x03\n\x1b\x45nhancedMeasurementSettings\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x16\n\x0estream_enabled\x18\x02 \x01(\x08\x12\x17\n\x0fscrolls_enabled\x18\x03 \x01(\x08\x12\x1f\n\x17outbound_clicks_enabled\x18\x04 \x01(\x08\x12\x1b\n\x13site_search_enabled\x18\x05 \x01(\x08\x12 \n\x18video_engagement_enabled\x18\x06 \x01(\x08\x12\x1e\n\x16\x66ile_downloads_enabled\x18\x07 \x01(\x08\x12\x1c\n\x14page_changes_enabled\x18\x08 \x01(\x08\x12!\n\x19\x66orm_interactions_enabled\x18\t \x01(\x08\x12#\n\x16search_query_parameter\x18\n \x01(\tB\x03\xe0\x41\x02\x12\x1b\n\x13uri_query_parameter\x18\x0b \x01(\t:\x8c\x01\xea\x41\x88\x01\n9analyticsadmin.googleapis.com/EnhancedMeasurementSettings\x12Kproperties/{property}/dataStreams/{data_stream}/enhancedMeasurementSettings\"B\n\x10\x43onnectedSiteTag\x12\x19\n\x0c\x64isplay_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x06tag_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\"\xa0\x01\n\x0b\x41\x64SenseLink\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0e\x61\x64_client_code\x18\x02 \x01(\tB\x03\xe0\x41\x05:a\xea\x41^\n)analyticsadmin.googleapis.com/AdSenseLink\x12\x31properties/{property}/adSenseLinks/{adsense_link}*\xaa\x04\n\x10IndustryCategory\x12!\n\x1dINDUSTRY_CATEGORY_UNSPECIFIED\x10\x00\x12\x0e\n\nAUTOMOTIVE\x10\x01\x12#\n\x1f\x42USINESS_AND_INDUSTRIAL_MARKETS\x10\x02\x12\x0b\n\x07\x46INANCE\x10\x03\x12\x0e\n\nHEALTHCARE\x10\x04\x12\x0e\n\nTECHNOLOGY\x10\x05\x12\n\n\x06TRAVEL\x10\x06\x12\t\n\x05OTHER\x10\x07\x12\x1a\n\x16\x41RTS_AND_ENTERTAINMENT\x10\x08\x12\x16\n\x12\x42\x45\x41UTY_AND_FITNESS\x10\t\x12\x18\n\x14\x42OOKS_AND_LITERATURE\x10\n\x12\x12\n\x0e\x46OOD_AND_DRINK\x10\x0b\x12\t\n\x05GAMES\x10\x0c\x12\x17\n\x13HOBBIES_AND_LEISURE\x10\r\x12\x13\n\x0fHOME_AND_GARDEN\x10\x0e\x12\x18\n\x14INTERNET_AND_TELECOM\x10\x0f\x12\x16\n\x12LAW_AND_GOVERNMENT\x10\x10\x12\x08\n\x04NEWS\x10\x11\x12\x16\n\x12ONLINE_COMMUNITIES\x10\x12\x12\x16\n\x12PEOPLE_AND_SOCIETY\x10\x13\x12\x14\n\x10PETS_AND_ANIMALS\x10\x14\x12\x0f\n\x0bREAL_ESTATE\x10\x15\x12\r\n\tREFERENCE\x10\x16\x12\x0b\n\x07SCIENCE\x10\x17\x12\n\n\x06SPORTS\x10\x18\x12\x16\n\x12JOBS_AND_EDUCATION\x10\x19\x12\x0c\n\x08SHOPPING\x10\x1a*f\n\x0cServiceLevel\x12\x1d\n\x19SERVICE_LEVEL_UNSPECIFIED\x10\x00\x12\x1d\n\x19GOOGLE_ANALYTICS_STANDARD\x10\x01\x12\x18\n\x14GOOGLE_ANALYTICS_360\x10\x02*J\n\tActorType\x12\x1a\n\x16\x41\x43TOR_TYPE_UNSPECIFIED\x10\x00\x12\x08\n\x04USER\x10\x01\x12\n\n\x06SYSTEM\x10\x02\x12\x0b\n\x07SUPPORT\x10\x03*P\n\nActionType\x12\x1b\n\x17\x41\x43TION_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x43REATED\x10\x01\x12\x0b\n\x07UPDATED\x10\x02\x12\x0b\n\x07\x44\x45LETED\x10\x03*\xee\x04\n\x19\x43hangeHistoryResourceType\x12,\n(CHANGE_HISTORY_RESOURCE_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x41\x43\x43OUNT\x10\x01\x12\x0c\n\x08PROPERTY\x10\x02\x12\x11\n\rFIREBASE_LINK\x10\x06\x12\x13\n\x0fGOOGLE_ADS_LINK\x10\x07\x12\x1b\n\x17GOOGLE_SIGNALS_SETTINGS\x10\x08\x12\x14\n\x10\x43ONVERSION_EVENT\x10\t\x12\x1f\n\x1bMEASUREMENT_PROTOCOL_SECRET\x10\n\x12\x14\n\x10\x43USTOM_DIMENSION\x10\x0b\x12\x11\n\rCUSTOM_METRIC\x10\x0c\x12\x1b\n\x17\x44\x41TA_RETENTION_SETTINGS\x10\r\x12%\n!DISPLAY_VIDEO_360_ADVERTISER_LINK\x10\x0e\x12.\n*DISPLAY_VIDEO_360_ADVERTISER_LINK_PROPOSAL\x10\x0f\x12\x17\n\x13SEARCH_ADS_360_LINK\x10\x10\x12\x0f\n\x0b\x44\x41TA_STREAM\x10\x12\x12\x18\n\x14\x41TTRIBUTION_SETTINGS\x10\x14\x12\x15\n\x11\x45XPANDED_DATA_SET\x10\x15\x12\x11\n\rCHANNEL_GROUP\x10\x16\x12!\n\x1d\x45NHANCED_MEASUREMENT_SETTINGS\x10\x18\x12\'\n#SKADNETWORK_CONVERSION_VALUE_SCHEMA\x10\x1a\x12\x10\n\x0c\x41\x44SENSE_LINK\x10\x1b\x12\x0c\n\x08\x41UDIENCE\x10\x1c\x12\x15\n\x11\x45VENT_CREATE_RULE\x10\x1d*s\n\x12GoogleSignalsState\x12$\n GOOGLE_SIGNALS_STATE_UNSPECIFIED\x10\x00\x12\x1a\n\x16GOOGLE_SIGNALS_ENABLED\x10\x01\x12\x1b\n\x17GOOGLE_SIGNALS_DISABLED\x10\x02*\x8e\x01\n\x14GoogleSignalsConsent\x12&\n\"GOOGLE_SIGNALS_CONSENT_UNSPECIFIED\x10\x00\x12$\n GOOGLE_SIGNALS_CONSENT_CONSENTED\x10\x02\x12(\n$GOOGLE_SIGNALS_CONSENT_NOT_CONSENTED\x10\x01*{\n\x1dLinkProposalInitiatingProduct\x12\x30\n,LINK_PROPOSAL_INITIATING_PRODUCT_UNSPECIFIED\x10\x00\x12\x14\n\x10GOOGLE_ANALYTICS\x10\x01\x12\x12\n\x0eLINKED_PRODUCT\x10\x02*\xc4\x01\n\x11LinkProposalState\x12#\n\x1fLINK_PROPOSAL_STATE_UNSPECIFIED\x10\x00\x12)\n%AWAITING_REVIEW_FROM_GOOGLE_ANALYTICS\x10\x01\x12\'\n#AWAITING_REVIEW_FROM_LINKED_PRODUCT\x10\x02\x12\r\n\tWITHDRAWN\x10\x03\x12\x0c\n\x08\x44\x45\x43LINED\x10\x04\x12\x0b\n\x07\x45XPIRED\x10\x05\x12\x0c\n\x08OBSOLETE\x10\x06*\x82\x01\n\x0cPropertyType\x12\x1d\n\x19PROPERTY_TYPE_UNSPECIFIED\x10\x00\x12\x1a\n\x16PROPERTY_TYPE_ORDINARY\x10\x01\x12\x1d\n\x19PROPERTY_TYPE_SUBPROPERTY\x10\x02\x12\x18\n\x14PROPERTY_TYPE_ROLLUP\x10\x03*q\n\x0b\x43oarseValue\x12\x1c\n\x18\x43OARSE_VALUE_UNSPECIFIED\x10\x00\x12\x14\n\x10\x43OARSE_VALUE_LOW\x10\x01\x12\x17\n\x13\x43OARSE_VALUE_MEDIUM\x10\x02\x12\x15\n\x11\x43OARSE_VALUE_HIGH\x10\x03\x42v\n\"com.google.analytics.admin.v1alphaB\x0eResourcesProtoP\x01Z>cloud.google.com/go/analytics/admin/apiv1alpha/adminpb;adminpbb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.BoolValue", "google/protobuf/wrappers.proto"],
    ["google.analytics.admin.v1alpha.ExpandedDataSet", "google/analytics/admin/v1alpha/expanded_data_set.proto"],
    ["google.analytics.admin.v1alpha.ChannelGroup", "google/analytics/admin/v1alpha/channel_group.proto"],
    ["google.analytics.admin.v1alpha.Audience", "google/analytics/admin/v1alpha/audience.proto"],
    ["google.analytics.admin.v1alpha.EventCreateRule", "google/analytics/admin/v1alpha/event_create_and_edit.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Analytics
    module Admin
      module V1alpha
        Account = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.Account").msgclass
        Property = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.Property").msgclass
        DataStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DataStream").msgclass
        DataStream::WebStreamData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DataStream.WebStreamData").msgclass
        DataStream::AndroidAppStreamData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DataStream.AndroidAppStreamData").msgclass
        DataStream::IosAppStreamData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DataStream.IosAppStreamData").msgclass
        DataStream::DataStreamType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DataStream.DataStreamType").enummodule
        UserLink = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UserLink").msgclass
        AuditUserLink = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AuditUserLink").msgclass
        FirebaseLink = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.FirebaseLink").msgclass
        GlobalSiteTag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GlobalSiteTag").msgclass
        GoogleAdsLink = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GoogleAdsLink").msgclass
        DataSharingSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DataSharingSettings").msgclass
        AccountSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AccountSummary").msgclass
        PropertySummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.PropertySummary").msgclass
        MeasurementProtocolSecret = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.MeasurementProtocolSecret").msgclass
        SKAdNetworkConversionValueSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.SKAdNetworkConversionValueSchema").msgclass
        PostbackWindow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.PostbackWindow").msgclass
        ConversionValues = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ConversionValues").msgclass
        EventMapping = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.EventMapping").msgclass
        ChangeHistoryEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ChangeHistoryEvent").msgclass
        ChangeHistoryChange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ChangeHistoryChange").msgclass
        ChangeHistoryChange::ChangeHistoryResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ChangeHistoryChange.ChangeHistoryResource").msgclass
        DisplayVideo360AdvertiserLink = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DisplayVideo360AdvertiserLink").msgclass
        DisplayVideo360AdvertiserLinkProposal = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DisplayVideo360AdvertiserLinkProposal").msgclass
        SearchAds360Link = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.SearchAds360Link").msgclass
        LinkProposalStatusDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.LinkProposalStatusDetails").msgclass
        ConversionEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ConversionEvent").msgclass
        ConversionEvent::ConversionCountingMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ConversionEvent.ConversionCountingMethod").enummodule
        GoogleSignalsSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GoogleSignalsSettings").msgclass
        CustomDimension = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CustomDimension").msgclass
        CustomDimension::DimensionScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CustomDimension.DimensionScope").enummodule
        CustomMetric = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CustomMetric").msgclass
        CustomMetric::MeasurementUnit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CustomMetric.MeasurementUnit").enummodule
        CustomMetric::MetricScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CustomMetric.MetricScope").enummodule
        CustomMetric::RestrictedMetricType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CustomMetric.RestrictedMetricType").enummodule
        DataRetentionSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DataRetentionSettings").msgclass
        DataRetentionSettings::RetentionDuration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DataRetentionSettings.RetentionDuration").enummodule
        AttributionSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AttributionSettings").msgclass
        AttributionSettings::AcquisitionConversionEventLookbackWindow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AttributionSettings.AcquisitionConversionEventLookbackWindow").enummodule
        AttributionSettings::OtherConversionEventLookbackWindow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AttributionSettings.OtherConversionEventLookbackWindow").enummodule
        AttributionSettings::ReportingAttributionModel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AttributionSettings.ReportingAttributionModel").enummodule
        AttributionSettings::AdsWebConversionDataExportScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AttributionSettings.AdsWebConversionDataExportScope").enummodule
        AccessBinding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AccessBinding").msgclass
        BigQueryLink = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BigQueryLink").msgclass
        EnhancedMeasurementSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.EnhancedMeasurementSettings").msgclass
        ConnectedSiteTag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ConnectedSiteTag").msgclass
        AdSenseLink = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AdSenseLink").msgclass
        IndustryCategory = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.IndustryCategory").enummodule
        ServiceLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ServiceLevel").enummodule
        ActorType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ActorType").enummodule
        ActionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ActionType").enummodule
        ChangeHistoryResourceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ChangeHistoryResourceType").enummodule
        GoogleSignalsState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GoogleSignalsState").enummodule
        GoogleSignalsConsent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GoogleSignalsConsent").enummodule
        LinkProposalInitiatingProduct = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.LinkProposalInitiatingProduct").enummodule
        LinkProposalState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.LinkProposalState").enummodule
        PropertyType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.PropertyType").enummodule
        CoarseValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CoarseValue").enummodule
      end
    end
  end
end
