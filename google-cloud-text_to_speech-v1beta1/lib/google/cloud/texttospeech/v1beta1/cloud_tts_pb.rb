# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/texttospeech/v1beta1/cloud_tts.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/texttospeech/v1beta1/cloud_tts.proto", :syntax => :proto3) do
    add_message "google.cloud.texttospeech.v1beta1.ListVoicesRequest" do
      optional :language_code, :string, 1
    end
    add_message "google.cloud.texttospeech.v1beta1.ListVoicesResponse" do
      repeated :voices, :message, 1, "google.cloud.texttospeech.v1beta1.Voice"
    end
    add_message "google.cloud.texttospeech.v1beta1.Voice" do
      repeated :language_codes, :string, 1
      optional :name, :string, 2
      optional :ssml_gender, :enum, 3, "google.cloud.texttospeech.v1beta1.SsmlVoiceGender"
      optional :natural_sample_rate_hertz, :int32, 4
    end
    add_message "google.cloud.texttospeech.v1beta1.SynthesizeSpeechRequest" do
      optional :input, :message, 1, "google.cloud.texttospeech.v1beta1.SynthesisInput"
      optional :voice, :message, 2, "google.cloud.texttospeech.v1beta1.VoiceSelectionParams"
      optional :audio_config, :message, 3, "google.cloud.texttospeech.v1beta1.AudioConfig"
      repeated :enable_time_pointing, :enum, 4, "google.cloud.texttospeech.v1beta1.SynthesizeSpeechRequest.TimepointType"
    end
    add_enum "google.cloud.texttospeech.v1beta1.SynthesizeSpeechRequest.TimepointType" do
      value :TIMEPOINT_TYPE_UNSPECIFIED, 0
      value :SSML_MARK, 1
    end
    add_message "google.cloud.texttospeech.v1beta1.SynthesisInput" do
      oneof :input_source do
        optional :text, :string, 1
        optional :ssml, :string, 2
      end
    end
    add_message "google.cloud.texttospeech.v1beta1.VoiceSelectionParams" do
      optional :language_code, :string, 1
      optional :name, :string, 2
      optional :ssml_gender, :enum, 3, "google.cloud.texttospeech.v1beta1.SsmlVoiceGender"
      optional :custom_voice, :message, 4, "google.cloud.texttospeech.v1beta1.CustomVoiceParams"
    end
    add_message "google.cloud.texttospeech.v1beta1.AudioConfig" do
      optional :audio_encoding, :enum, 1, "google.cloud.texttospeech.v1beta1.AudioEncoding"
      optional :speaking_rate, :double, 2
      optional :pitch, :double, 3
      optional :volume_gain_db, :double, 4
      optional :sample_rate_hertz, :int32, 5
      repeated :effects_profile_id, :string, 6
    end
    add_message "google.cloud.texttospeech.v1beta1.CustomVoiceParams" do
      optional :model, :string, 1
      optional :reported_usage, :enum, 3, "google.cloud.texttospeech.v1beta1.CustomVoiceParams.ReportedUsage"
    end
    add_enum "google.cloud.texttospeech.v1beta1.CustomVoiceParams.ReportedUsage" do
      value :REPORTED_USAGE_UNSPECIFIED, 0
      value :REALTIME, 1
      value :OFFLINE, 2
    end
    add_message "google.cloud.texttospeech.v1beta1.SynthesizeSpeechResponse" do
      optional :audio_content, :bytes, 1
      repeated :timepoints, :message, 2, "google.cloud.texttospeech.v1beta1.Timepoint"
      optional :audio_config, :message, 4, "google.cloud.texttospeech.v1beta1.AudioConfig"
    end
    add_message "google.cloud.texttospeech.v1beta1.Timepoint" do
      optional :mark_name, :string, 4
      optional :time_seconds, :double, 3
    end
    add_enum "google.cloud.texttospeech.v1beta1.SsmlVoiceGender" do
      value :SSML_VOICE_GENDER_UNSPECIFIED, 0
      value :MALE, 1
      value :FEMALE, 2
      value :NEUTRAL, 3
    end
    add_enum "google.cloud.texttospeech.v1beta1.AudioEncoding" do
      value :AUDIO_ENCODING_UNSPECIFIED, 0
      value :LINEAR16, 1
      value :MP3, 2
      value :MP3_64_KBPS, 4
      value :OGG_OPUS, 3
      value :MULAW, 5
      value :ALAW, 6
    end
  end
end

module Google
  module Cloud
    module TextToSpeech
      module V1beta1
        ListVoicesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.ListVoicesRequest").msgclass
        ListVoicesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.ListVoicesResponse").msgclass
        Voice = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.Voice").msgclass
        SynthesizeSpeechRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.SynthesizeSpeechRequest").msgclass
        SynthesizeSpeechRequest::TimepointType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.SynthesizeSpeechRequest.TimepointType").enummodule
        SynthesisInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.SynthesisInput").msgclass
        VoiceSelectionParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.VoiceSelectionParams").msgclass
        AudioConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.AudioConfig").msgclass
        CustomVoiceParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.CustomVoiceParams").msgclass
        CustomVoiceParams::ReportedUsage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.CustomVoiceParams.ReportedUsage").enummodule
        SynthesizeSpeechResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.SynthesizeSpeechResponse").msgclass
        Timepoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.Timepoint").msgclass
        SsmlVoiceGender = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.SsmlVoiceGender").enummodule
        AudioEncoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.AudioEncoding").enummodule
      end
    end
  end
end
