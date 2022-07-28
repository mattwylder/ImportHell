
Pod::Spec.new do |spec|
  spec.name         = "ImportHell"
  spec.version      = "0.0.1"
  spec.summary      = ""

  spec.description  = <<-DESC
                   DESC

  spec.homepage     = "https://github.com/mattwylder/ImportHell"

  spec.license      = "MIT (example)"
  spec.author             = { "Matthew Wylder" => "email@address.com" }
  spec.source       = { :git => "https://github.com/mattwylder/ImportHell.git", :commit => "bf63fc9e94b2a7cb434e4f60d010d1284a6934e2" }
  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"

end
