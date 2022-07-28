
Pod::Spec.new do |spec|
  spec.name         = "ImportHell"
  spec.version      = "0.0.1"
  spec.summary      = "wow!!"

  spec.description  = <<-DESC
                        wow!
                   DESC

  spec.homepage     = "https://github.com/mattwylder/ImportHell"

  spec.license      = "MIT"
  spec.author       = { "Matthew Wylder" => "email@address.com" }
  spec.source       = { :git => "https://github.com/mattwylder/ImportHell.git", :commit => "bf63fc9e94b2a7cb434e4f60d010d1284a6934e2" }
  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"

#  spec.default_subspecs = %w[EngineObjC, EngineSwift, CarSwift]

  spec.subspec "EngineObjC" do |s|
    s.source_files = "Sources/EngineObjC/*.{h,m}"
    s.public_header_files = "Sources/EngineObjC/Public/*.h"
    s.dependency "ImportHell/EngineSwift"
  end

  spec.subspec "EngineSwift" do |s|
    s.source_files = "Sources/EngineSwift/*.swift"
  end

  spec.subspec "CarSwift" do |s|
    s.source_files = "Sources/CarSwift/*.swift"
    s.dependency "ImportHell/EngineObjC"
  end

end
