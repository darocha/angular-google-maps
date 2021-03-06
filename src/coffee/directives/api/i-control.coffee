###
 - interface for all controls to derive from
 - to enforce a minimum set of requirements
	- attributes
		- template
		- position
		- controller
		- index
###
angular.module("uiGmapgoogle-maps.directives.api")
.factory "uiGmapIControl", [ "uiGmapBaseObject", "uiGmapLogger", "uiGmapCtrlHandle", (BaseObject, Logger, CtrlHandle) ->
  class IControl extends BaseObject
    @extend CtrlHandle
    constructor: ->
      @restrict = 'EA'
      @replace = true
      @require = '^' + 'uiGmapGoogleMap'
      @scope =
        template: '@template'
        position: '@position'
        controller: '@controller'
        index: '@index'
      @$log = Logger

    link: (scope, element, attrs, ctrl) ->
      throw new Exception "Not implemented!!"
]
