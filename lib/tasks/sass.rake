namespace :sass do
  desc 'Updates stylesheets from their Sass template.'
  task :update => :environment do
    Sass::Plugin.update_stylesheets
  end
end
