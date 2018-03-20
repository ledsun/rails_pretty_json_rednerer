module RailsPrettyJsonRednerer
  class Railtie < Rails::Railtie
    initializer 'rails_pretty_json_rednerer.configure_rails_initialization' do |_app|
      ActionController::Renderers.add :pretty_json do |obj, options|
        _render_with_renderer_json JSON.pretty_generate(obj.as_json(options)), options
      end
    end
  end
end
