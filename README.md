# active_job_sample
```
$ bundle exec rails new --help
$ bundle exec rails new --skip-bundle active_job_sample
$ cd active_job_sample
$ bundle install --path vendor/bundle
$ bundle exec rails g job guests_cleanup
$ vi app/jobs/guests_cleanup_job.rb 
$ bundle exec rails g task sample first
$ vi lib/tasks/sample.rake
$ bundle exec rails sample:first
$ vi Gemfile
gem 'delayed_job_active_record'
$ bundle install --path vendor/bundle
$ bundle exec rails generate delayed_job:active_record
$ bundle exec rails db:migrate
$ vi app/model/delayed_job.rb
class DelayedJob < ApplicationRecord
end
$ vi config/application.rb
config.active_job.queue_adapter = :delayed_job
$ bundle exec rails sample:first

$ bundle exec rails c
Loading development environment (Rails 5.1.4)
irb(main):001:0> DelayedJob
=> DelayedJob (call 'DelayedJob.connection' to establish a connection)
irb(main):002:0> DelayedJob.all
  DelayedJob Load (1.3ms)  SELECT  "delayed_jobs".* FROM "delayed_jobs" LIMIT ?  [["LIMIT", 11]]
=> #<ActiveRecord::Relation [#<DelayedJob id: 1, priority: 0, attempts: 0, handler: "--- !ruby/object:ActiveJob::QueueAdapters::Delayed...", last_error: nil, run_at: "2017-11-28 08:39:07", locked_at: nil, failed_at: nil, locked_by: nil, queue: "default", created_at: "2017-11-28 08:39:07", updated_at: "2017-11-28 08:39:07">]>
irb(main):003:0> 

$ bundle exec rails jobs:work
delayed_jobのgemにあるjob
```
