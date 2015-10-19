require "canvas_cc/version"
require 'builder'
require 'cgi'
require 'erb'
require 'fileutils'
require 'happymapper'
require 'logger'
require 'nokogiri'
require 'ostruct'
require 'rdiscount'
require 'uri'
require 'securerandom'

module CanvasCc
    module CC
    autoload :Assessment, 'canvas_cc/cc/assessment'
    autoload :Assignment, 'canvas_cc/cc/assignment'
    autoload :CCHelper, 'canvas_cc/cc/cc_helper'
    autoload :Converter, 'canvas_cc/cc/converter'
    autoload :Course, 'canvas_cc/cc/course'
    autoload :DiscussionTopic, 'canvas_cc/cc/discussion_topic'
    autoload :Label, 'canvas_cc/cc/label'
    autoload :Question, 'canvas_cc/cc/question'
    autoload :Resource, 'canvas_cc/cc/resource'
    autoload :WebContent, 'canvas_cc/cc/web_content'
    autoload :WebLink, 'canvas_cc/cc/web_link'
    autoload :Wiki, 'canvas_cc/cc/wiki'
  end
  module Canvas
    autoload :Assessment, 'canvas_cc/canvas/assessment'
    autoload :Assignment, 'canvas_cc/canvas/assignment'
    autoload :Converter, 'canvas_cc/canvas/converter'
    autoload :Course, 'canvas_cc/canvas/course'
    autoload :DiscussionTopic, 'canvas_cc/canvas/discussion_topic'
    autoload :Label, 'canvas_cc/canvas/label'
    autoload :Question, 'canvas_cc/canvas/question'
    autoload :QuestionBank, 'canvas_cc/canvas/question_bank'
    autoload :QuestionGroup, 'canvas_cc/canvas/question_group'
    autoload :Resource, 'canvas_cc/canvas/resource'
    autoload :WebContent, 'canvas_cc/canvas/web_content'
    autoload :WebLink, 'canvas_cc/canvas/web_link'
    autoload :Wiki, 'canvas_cc/canvas/wiki'
  end
  module CanvasCC
    autoload :AssignmentHelper, 'canvas_cc/canvas_cc/assignment_helper'
    autoload :ImsManifestGenerator, 'canvas_cc/canvas_cc/ims_manifest_generator'
    autoload :CartridgeCreator, 'canvas_cc/canvas_cc/cartridge_creator'
    autoload :CourseSettingWriter, 'canvas_cc/canvas_cc/course_setting_writer'
    autoload :ModuleMetaWriter, 'canvas_cc/canvas_cc/module_meta_writer'
    autoload :FileMetaWriter, 'canvas_cc/canvas_cc/file_meta_writer'
    autoload :CanvasExportWriter, 'canvas_cc/canvas_cc/canvas_export_writer'
    autoload :PageWriter, 'canvas_cc/canvas_cc/page_writer'
    autoload :DiscussionWriter, 'canvas_cc/canvas_cc/discussion_writer'
    autoload :AssignmentWriter, 'canvas_cc/canvas_cc/assignment_writer'
    autoload :AssignmentGroupWriter, 'canvas_cc/canvas_cc/assignment_group_writer'
    autoload :CourseSyllabusWriter, 'canvas_cc/canvas_cc/course_syllabus_writer'

    autoload :QuestionWriter, 'canvas_cc/canvas_cc/question_writer'
    autoload :CalculatedQuestionWriter, 'canvas_cc/canvas_cc/calculated_question_writer'
    autoload :EssayQuestionWriter, 'canvas_cc/canvas_cc/essay_question_writer'
    autoload :MatchingQuestionWriter, 'canvas_cc/canvas_cc/matching_question_writer'
    autoload :MultipleAnswersQuestionWriter, 'canvas_cc/canvas_cc/multiple_answers_question_writer'
    autoload :MultipleBlanksQuestionWriter, 'canvas_cc/canvas_cc/multiple_blanks_question_writer'
    autoload :MultipleChoiceQuestionWriter, 'canvas_cc/canvas_cc/multiple_choice_question_writer'
    autoload :MultipleDropdownsQuestionWriter, 'canvas_cc/canvas_cc/multiple_dropdowns_question_writer'
    autoload :NumericalQuestionWriter, 'canvas_cc/canvas_cc/numerical_question_writer'
    autoload :ShortAnswerQuestionWriter, 'canvas_cc/canvas_cc/short_answer_question_writer'
    autoload :TextOnlyQuestionWriter, 'canvas_cc/canvas_cc/text_only_question_writer'
    autoload :TrueFalseQuestionWriter, 'canvas_cc/canvas_cc/true_false_question_writer'
    autoload :FileUploadQuestionWriter, 'canvas_cc/canvas_cc/file_upload_question_writer'

    autoload :QuestionBankWriter, 'canvas_cc/canvas_cc/question_bank_writer'
    autoload :QuestionGroupWriter, 'canvas_cc/canvas_cc/question_group_writer'
    autoload :AssessmentWriter, 'canvas_cc/canvas_cc/assessment_writer'
    module Models
      autoload :Course, 'canvas_cc/canvas_cc/models/course'
      autoload :Assignment, 'canvas_cc/canvas_cc/models/assignment'
      autoload :Syllabus, 'canvas_cc/canvas_cc/models/syllabus'
      autoload :AssignmentGroup, 'canvas_cc/canvas_cc/models/assignment_group'
      autoload :Assessment, 'canvas_cc/canvas_cc/models/assessment'
      autoload :DiscussionTopic, 'canvas_cc/canvas_cc/models/discussion_topic'
      autoload :Question, 'canvas_cc/canvas_cc/models/question'
      autoload :CalculatedQuestion, 'canvas_cc/canvas_cc/models/calculated_question'
      autoload :Answer, 'canvas_cc/canvas_cc/models/answer'
      autoload :QuestionBank, 'canvas_cc/canvas_cc/models/question_bank'
      autoload :QuestionGroup, 'canvas_cc/canvas_cc/models/question_group'
      autoload :WebContent, 'canvas_cc/canvas_cc/models/web_content'
      autoload :WebLink, 'canvas_cc/canvas_cc/models/web_link'
      autoload :Resource, 'canvas_cc/canvas_cc/models/resource'
      autoload :CanvasModule, 'canvas_cc/canvas_cc/models/canvas_module'
      autoload :ModuleItem, 'canvas_cc/canvas_cc/models/module_item'
      autoload :CanvasFile, 'canvas_cc/canvas_cc/models/canvas_file'
      autoload :CanvasFolder, 'canvas_cc/canvas_cc/models/canvas_folder'
      autoload :Page, 'canvas_cc/canvas_cc/models/page'
      autoload :Discussion, 'canvas_cc/canvas_cc/models/discussion'
      autoload :WorkflowState, 'canvas_cc/canvas_cc/models/workflow_state'
      autoload :Range, 'canvas_cc/canvas_cc/models/range'
      autoload :ModulePrerequisite, 'canvas_cc/canvas_cc/models/module_prerequisite'
      autoload :ModuleCompletionRequirement, 'canvas_cc/canvas_cc/models/module_completion_requirement'
    end
  end
end
