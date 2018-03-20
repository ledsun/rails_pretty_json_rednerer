RSpec.describe RailsPrettyJsonRednerer do
  before(:all) do
    require 'bundler'
    Bundler.require :default, :development
    Combustion.initialize! :action_controller, :action_view
  end

  it 'has a version number' do
    expect(RailsPrettyJsonRednerer::VERSION).not_to be nil
  end

  describe 'renderer' do
    it 'is added as pretty_json' do
      expect(ActionController::Renderers::RENDERERS).to include(:pretty_json)
    end
  end

  describe 'rendered json' do
    let(:source_object) { { key: 'value' } }
    let(:prettified_json) { JSON.pretty_generate(key: 'value') }

    before do
      class StubController < ActionController::API
        def show(source_object)
          render pretty_json: source_object
        end
      end
    end

    it 'is prettified' do
      controller = StubController.new
      response = ActionDispatch::Response.create
      controller.set_response! response
      controller.show source_object

      expect(response.body).to eq(prettified_json)
    end

    describe 'source object' do
      let(:source_object) { Struct.new('Dummy', :key).new('value') }

      it 'that is not Hash object also is supported' do
        controller = StubController.new
        response = ActionDispatch::Response.create
        controller.set_response! response
        controller.show source_object

        expect(response.body).to eq(prettified_json)
      end
    end
  end
end
