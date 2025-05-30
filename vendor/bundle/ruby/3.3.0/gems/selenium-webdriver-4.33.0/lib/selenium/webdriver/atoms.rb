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
    module Atoms
      def atom_script(function_name)
        format("/* #{function_name} */return (%<atom>s).apply(null, arguments)",
               atom: read_atom(function_name))
      end

      private

      def read_atom(function)
        File.read(File.expand_path("../atoms/#{function}.js", __FILE__))
      end

      def execute_atom(function_name, *)
        execute_script(atom_script(function_name), *)
      end
    end # Atoms
  end # WebDriver
end # Selenium
