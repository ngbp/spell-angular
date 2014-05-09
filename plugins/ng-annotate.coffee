ngAnnotate = require "ng-annotate"

module.exports = ( warlock ) ->
  warlock.flow( 'scripts-to-compile' )
  .add( 80, 'angular.annotate', ( options ) ->
    warlock.streams.map ( file ) ->
      file.contents = new Buffer ngAnnotate( file.contents.toString(), options ).src
      file
  )

