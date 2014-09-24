#!/usr/bin/env ruby
# Copyright 2001-2014 Rally Software Development Corp. All Rights Reserved.
# $: << 'lib' << '.'

require 'rallyeif-wrk'
require "#{File.dirname(__FILE__)}/lib/rallyeif-xml"


begin
  RallyEIF::WRK::LoadCustomFieldHandlers.load

  connector_runner = RallyEIF::WRK::ConnectorRunner.new(ARGV, "XMLConnection")
  connector_runner.run()
rescue => ex
  RallyEIF::WRK::RallyLogger.exception(self, ex)
end