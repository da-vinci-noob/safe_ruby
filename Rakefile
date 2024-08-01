#!/usr/bin/env rake

Dir['tasks/**/*.rake'].each { |t| load t }

desc 'Continous integration tasks'
task :ci do
  [
    'test:spec',
    :rubocop
  ].each do |name|
    puts "\n=== Running #{name}...\n"
    Rake::Task[name].invoke
    puts "\n=== Running #{name} -> Done\n"
  end
end

task default: :ci
