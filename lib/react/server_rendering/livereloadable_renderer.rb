module React
  module ServerRendering
    class LiveReloadableRenderer < SprocketsRenderer
      def initialize(options = {})
        @filenames = options.fetch(:files, ["react.js", "components.js"])
        super
      end

      def render(component_name, props, prerender_options)
        js_code = CONSOLE_POLYFILL.dup
        @filenames.each do |filename|
          js_code << ::Rails.application.assets[filename].to_s
        end
        @context = ExecJS.compile(GLOBAL_WRAPPER + js_code)
        super
      end
    end
  end
end
