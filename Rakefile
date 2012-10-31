task :default => :test

desc "Realiza los tests con formato deseado"
task :test do
   sh "rspec -Ilib spec/ppt_spec.rb --format documentation"
end



desc "Test en formato html"
task :thtml do
  sh "rspec -Ilib spec/ppt_spec.rb -f html > index.html"
end

desc "Test "
task :bin do
  sh "rspec -Ilib spec/ppt_spec.rb"
end
