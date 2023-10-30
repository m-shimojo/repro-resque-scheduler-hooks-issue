# repro-resque-scheduler-hooks-issue
Repo for reproducing resque-scheduler hooks issue.  
See here for details: https://github.com/resque/resque-scheduler/issues/779

## Prerequisite
Redis is running on localhost:6379.

## Steps to reproduce
console1:
```
QUEUE=* bundle exec rake resque:work
```

console2:
```
bundle exec rake resque:scheduler
```

console3:
```
ruby sample_script.rb
```
