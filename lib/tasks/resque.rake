require 'resque'
require 'resque/tasks'
require 'resque/scheduler/tasks'

require_relative '../../jobs/sample_job'

namespace :resque do
  task :setup do
    require_relative '../../resque'
  end

  task setup_schedule: :setup

  task scheduler: :setup_schedule
end
