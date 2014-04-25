templatecache = require 'gulp-angular-templatecache'

module.exports = ( warlock ) ->
  tplCache = ( options ) ->
    templatecache( options.filename, options )

  warlock.flow 'templates-to-build',
    source: [ '<%= globs.source.templates %>' ]
    tasks: [ 'webapp-build' ]
    merge: 'flow::scripts-to-build::95'

  .add( 50, 'angular.tplCache', tplCache )

