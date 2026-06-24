# frozen_string_literal: true

module Termcore
  def self.run(args)
    command = args.shift

    case command
    when 'init'
      require_relative 'commands/init'
      Commands::Init.call
    else
      puts "command not found\nuse termcore --help to list valid commands"
    end
  end
end
