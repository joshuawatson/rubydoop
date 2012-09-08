# encoding: utf-8

require 'rudoop'
require 'json'

require 'sample_project/mapper'
require 'sample_project/reducer'


module SampleProject
  extend Rudoop::ConfigurationDsl

  configure do |input_path, output_path|
    job 'sample_project' do
      input input_path
      output output_path

      mapper SampleProject::Mapper
      reducer SampleProject::Reducer
    end
  end
end