exports.config =

	npm:
		enabled: false

	modules:
		definition: false
		wrapper: false

	conventions:
		ignored: [
			/[\\/]_/,
			/\-test.js$/
		]

	files:
		javascripts:
			joinTo:
				'js/vendor.js': /^bower_components/
				'js/main.js': /^app\/scripts/
			order:
				after: [
					'app/scripts/main.coffee'
				]

		stylesheets:
			joinTo:
				'css/main.css': /^(bower_components|app\/styles)/

		templates:
			joinTo: 'js/dontUseMe'

	paths:
		watched: [
			'app',
			'../../Nn',
			'../../bootstrap'
		]
		public: '../../public'

	sourceMaps: false

	plugins:
		babel:
			presets: ['es2015']
			pattern: /\.(js)$/
		uglify:
			mangle: false
			minify: false
		autoReload:
			host: 'localhost'
			enabled:
				css: on
				js: on
				assets: on
		stylus:
			includeCss: true

	overrides:
		production:
			optimize: false
			sourceMaps: false
			plugins:
				autoReload:
					enabled: false