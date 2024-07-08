# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1/answer.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n,google/cloud/discoveryengine/v1/answer.proto\x12\x1fgoogle.cloud.discoveryengine.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xf3\x1e\n\x06\x41nswer\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12<\n\x05state\x18\x02 \x01(\x0e\x32-.google.cloud.discoveryengine.v1.Answer.State\x12\x13\n\x0b\x61nswer_text\x18\x03 \x01(\t\x12\x43\n\tcitations\x18\x04 \x03(\x0b\x32\x30.google.cloud.discoveryengine.v1.Answer.Citation\x12\x45\n\nreferences\x18\x05 \x03(\x0b\x32\x31.google.cloud.discoveryengine.v1.Answer.Reference\x12\x19\n\x11related_questions\x18\x06 \x03(\t\x12;\n\x05steps\x18\x07 \x03(\x0b\x32,.google.cloud.discoveryengine.v1.Answer.Step\x12`\n\x18query_understanding_info\x18\n \x01(\x0b\x32>.google.cloud.discoveryengine.v1.Answer.QueryUnderstandingInfo\x12[\n\x16\x61nswer_skipped_reasons\x18\x0b \x03(\x0e\x32;.google.cloud.discoveryengine.v1.Answer.AnswerSkippedReason\x12\x34\n\x0b\x63reate_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x36\n\rcomplete_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x1a{\n\x08\x43itation\x12\x13\n\x0bstart_index\x18\x01 \x01(\x03\x12\x11\n\tend_index\x18\x02 \x01(\x03\x12G\n\x07sources\x18\x03 \x03(\x0b\x32\x36.google.cloud.discoveryengine.v1.Answer.CitationSource\x1a&\n\x0e\x43itationSource\x12\x14\n\x0creference_id\x18\x01 \x01(\t\x1a\xd9\x07\n\tReference\x12p\n\x1aunstructured_document_info\x18\x01 \x01(\x0b\x32J.google.cloud.discoveryengine.v1.Answer.Reference.UnstructuredDocumentInfoH\x00\x12Q\n\nchunk_info\x18\x02 \x01(\x0b\x32;.google.cloud.discoveryengine.v1.Answer.Reference.ChunkInfoH\x00\x1a\xcf\x02\n\x18UnstructuredDocumentInfo\x12>\n\x08\x64ocument\x18\x01 \x01(\tB,\xfa\x41)\n\'discoveryengine.googleapis.com/Document\x12\x0b\n\x03uri\x18\x02 \x01(\t\x12\r\n\x05title\x18\x03 \x01(\t\x12o\n\x0e\x63hunk_contents\x18\x04 \x03(\x0b\x32W.google.cloud.discoveryengine.v1.Answer.Reference.UnstructuredDocumentInfo.ChunkContent\x12,\n\x0bstruct_data\x18\x05 \x01(\x0b\x32\x17.google.protobuf.Struct\x1a\x38\n\x0c\x43hunkContent\x12\x0f\n\x07\x63ontent\x18\x01 \x01(\t\x12\x17\n\x0fpage_identifier\x18\x02 \x01(\t\x1a\xa9\x03\n\tChunkInfo\x12\x38\n\x05\x63hunk\x18\x01 \x01(\tB)\xfa\x41&\n$discoveryengine.googleapis.com/Chunk\x12\x0f\n\x07\x63ontent\x18\x02 \x01(\t\x12\x1c\n\x0frelevance_score\x18\x03 \x01(\x02H\x00\x88\x01\x01\x12g\n\x11\x64ocument_metadata\x18\x04 \x01(\x0b\x32L.google.cloud.discoveryengine.v1.Answer.Reference.ChunkInfo.DocumentMetadata\x1a\xb5\x01\n\x10\x44ocumentMetadata\x12>\n\x08\x64ocument\x18\x01 \x01(\tB,\xfa\x41)\n\'discoveryengine.googleapis.com/Document\x12\x0b\n\x03uri\x18\x02 \x01(\t\x12\r\n\x05title\x18\x03 \x01(\t\x12\x17\n\x0fpage_identifier\x18\x04 \x01(\t\x12,\n\x0bstruct_data\x18\x05 \x01(\x0b\x32\x17.google.protobuf.StructB\x12\n\x10_relevance_scoreB\t\n\x07\x63ontent\x1a\xbc\x08\n\x04Step\x12\x41\n\x05state\x18\x01 \x01(\x0e\x32\x32.google.cloud.discoveryengine.v1.Answer.Step.State\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x0f\n\x07thought\x18\x03 \x01(\t\x12\x44\n\x07\x61\x63tions\x18\x04 \x03(\x0b\x32\x33.google.cloud.discoveryengine.v1.Answer.Step.Action\x1a\xb8\x06\n\x06\x41\x63tion\x12Y\n\rsearch_action\x18\x02 \x01(\x0b\x32@.google.cloud.discoveryengine.v1.Answer.Step.Action.SearchActionH\x00\x12T\n\x0bobservation\x18\x03 \x01(\x0b\x32?.google.cloud.discoveryengine.v1.Answer.Step.Action.Observation\x1a\x1d\n\x0cSearchAction\x12\r\n\x05query\x18\x01 \x01(\t\x1a\xd3\x04\n\x0bObservation\x12\x64\n\x0esearch_results\x18\x02 \x03(\x0b\x32L.google.cloud.discoveryengine.v1.Answer.Step.Action.Observation.SearchResult\x1a\xdd\x03\n\x0cSearchResult\x12\x10\n\x08\x64ocument\x18\x01 \x01(\t\x12\x0b\n\x03uri\x18\x02 \x01(\t\x12\r\n\x05title\x18\x03 \x01(\t\x12n\n\x0csnippet_info\x18\x04 \x03(\x0b\x32X.google.cloud.discoveryengine.v1.Answer.Step.Action.Observation.SearchResult.SnippetInfo\x12j\n\nchunk_info\x18\x05 \x03(\x0b\x32V.google.cloud.discoveryengine.v1.Answer.Step.Action.Observation.SearchResult.ChunkInfo\x12,\n\x0bstruct_data\x18\x06 \x01(\x0b\x32\x17.google.protobuf.Struct\x1a\x36\n\x0bSnippetInfo\x12\x0f\n\x07snippet\x18\x01 \x01(\t\x12\x16\n\x0esnippet_status\x18\x02 \x01(\t\x1a]\n\tChunkInfo\x12\r\n\x05\x63hunk\x18\x01 \x01(\t\x12\x0f\n\x07\x63ontent\x18\x02 \x01(\t\x12\x1c\n\x0frelevance_score\x18\x03 \x01(\x02H\x00\x88\x01\x01\x42\x12\n\x10_relevance_scoreB\x08\n\x06\x61\x63tion\"J\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bIN_PROGRESS\x10\x01\x12\n\n\x06\x46\x41ILED\x10\x02\x12\r\n\tSUCCEEDED\x10\x03\x1a\xff\x02\n\x16QueryUnderstandingInfo\x12y\n\x19query_classification_info\x18\x01 \x03(\x0b\x32V.google.cloud.discoveryengine.v1.Answer.QueryUnderstandingInfo.QueryClassificationInfo\x1a\xe9\x01\n\x17QueryClassificationInfo\x12i\n\x04type\x18\x01 \x01(\x0e\x32[.google.cloud.discoveryengine.v1.Answer.QueryUnderstandingInfo.QueryClassificationInfo.Type\x12\x10\n\x08positive\x18\x02 \x01(\x08\"Q\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x15\n\x11\x41\x44VERSARIAL_QUERY\x10\x01\x12\x1c\n\x18NON_ANSWER_SEEKING_QUERY\x10\x02\"J\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bIN_PROGRESS\x10\x01\x12\n\n\x06\x46\x41ILED\x10\x02\x12\r\n\tSUCCEEDED\x10\x03\"\xdb\x01\n\x13\x41nswerSkippedReason\x12%\n!ANSWER_SKIPPED_REASON_UNSPECIFIED\x10\x00\x12\x1d\n\x19\x41\x44VERSARIAL_QUERY_IGNORED\x10\x01\x12$\n NON_ANSWER_SEEKING_QUERY_IGNORED\x10\x02\x12\x1f\n\x1bOUT_OF_DOMAIN_QUERY_IGNORED\x10\x03\x12\x1e\n\x1aPOTENTIAL_POLICY_VIOLATION\x10\x04\x12\x17\n\x13NO_RELEVANT_CONTENT\x10\x05:\x85\x03\xea\x41\x81\x03\n%discoveryengine.googleapis.com/Answer\x12\x63projects/{project}/locations/{location}/dataStores/{data_store}/sessions/{session}/answers/{answer}\x12|projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/sessions/{session}/answers/{answer}\x12uprojects/{project}/locations/{location}/collections/{collection}/engines/{engine}/sessions/{session}/answers/{answer}B\xfe\x01\n#com.google.cloud.discoveryengine.v1B\x0b\x41nswerProtoP\x01ZMcloud.google.com/go/discoveryengine/apiv1/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02\x1fGoogle.Cloud.DiscoveryEngine.V1\xca\x02\x1fGoogle\\Cloud\\DiscoveryEngine\\V1\xea\x02\"Google::Cloud::DiscoveryEngine::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
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
  module Cloud
    module DiscoveryEngine
      module V1
        Answer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer").msgclass
        Answer::Citation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Citation").msgclass
        Answer::CitationSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.CitationSource").msgclass
        Answer::Reference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Reference").msgclass
        Answer::Reference::UnstructuredDocumentInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Reference.UnstructuredDocumentInfo").msgclass
        Answer::Reference::UnstructuredDocumentInfo::ChunkContent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Reference.UnstructuredDocumentInfo.ChunkContent").msgclass
        Answer::Reference::ChunkInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Reference.ChunkInfo").msgclass
        Answer::Reference::ChunkInfo::DocumentMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Reference.ChunkInfo.DocumentMetadata").msgclass
        Answer::Step = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Step").msgclass
        Answer::Step::Action = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Step.Action").msgclass
        Answer::Step::Action::SearchAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Step.Action.SearchAction").msgclass
        Answer::Step::Action::Observation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Step.Action.Observation").msgclass
        Answer::Step::Action::Observation::SearchResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Step.Action.Observation.SearchResult").msgclass
        Answer::Step::Action::Observation::SearchResult::SnippetInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Step.Action.Observation.SearchResult.SnippetInfo").msgclass
        Answer::Step::Action::Observation::SearchResult::ChunkInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Step.Action.Observation.SearchResult.ChunkInfo").msgclass
        Answer::Step::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.Step.State").enummodule
        Answer::QueryUnderstandingInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.QueryUnderstandingInfo").msgclass
        Answer::QueryUnderstandingInfo::QueryClassificationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.QueryUnderstandingInfo.QueryClassificationInfo").msgclass
        Answer::QueryUnderstandingInfo::QueryClassificationInfo::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.QueryUnderstandingInfo.QueryClassificationInfo.Type").enummodule
        Answer::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.State").enummodule
        Answer::AnswerSkippedReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Answer.AnswerSkippedReason").enummodule
      end
    end
  end
end
