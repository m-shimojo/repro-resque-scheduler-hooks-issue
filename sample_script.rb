require 'resque-scheduler'

require_relative 'jobs/sample_job'
Resque.enqueue_in(1, SampleJob)
