exports.config =

  files:
    javascripts:
      joinTo:
        'include/app.js': /^app/
        'include/vendor.js': /^(?!app)/
    stylesheets:
      joinTo:
        'include/app.css'

  plugins:
    gzip:
      paths:
        javascript: 'include'
        stylesheet: 'include'
      removeOriginalFiles: false
      renameGzipFilesToOriginalFiles: false
    on: ["riot"]
    riot:
      extension: 'tag'   # pattern overrides extension
      pattern: /\.tag$/  # default
      template: 'jade'
      type: 'coffeescript'
