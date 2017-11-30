namespace :sample do
  desc "TODO"
  task first: :environment do
    puts 'sample first starts'

    GuestsCleanupJob.perform_later 'hoge'
    #GuestsCleanupJob.perform_now 'fuga'
    
    puts 'sample first ends'
  end

end
