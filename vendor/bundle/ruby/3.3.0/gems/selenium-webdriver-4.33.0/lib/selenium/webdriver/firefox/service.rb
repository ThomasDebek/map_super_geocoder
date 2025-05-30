# frozen_string_literal: true

# Licensed to the Software Freedom Conservancy (SFC) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The SFC licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

module Selenium
  module WebDriver
    module Firefox
      class Service < WebDriver::Service
        DEFAULT_PORT = 4444
        EXECUTABLE = 'geckodriver'
        SHUTDOWN_SUPPORTED = false
        DRIVER_PATH_ENV_KEY = 'SE_GECKODRIVER'

        def initialize(path: nil, port: nil, log: nil, args: nil)
          args ||= []
          unless args.any? { |arg| arg.include?('--connect-existing') || arg.include?('--websocket-port') }
            args << '--websocket-port'
            args << '0'
          end
          super
        end
      end # Service
    end # Firefox
  end # WebDriver
end # Selenium
