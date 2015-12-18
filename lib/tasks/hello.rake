namespace :hello do
  desc "Print Helloworld to console"
  task :print => :environment do
  puts "Hello World!"
  end
end
