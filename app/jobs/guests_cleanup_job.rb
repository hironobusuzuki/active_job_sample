class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts 'GuestsCleanupJob starts.'

    puts args.first
    sleep(5)

    puts 'GuestsCleanupJob ends.'
  end
end
