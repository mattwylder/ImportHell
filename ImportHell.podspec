
Pod::Spec.new do |spec|
  spec.name         = "ImportHell"
  spec.version      = "0.0.1"
  spec.summary      = "wow!!"

  spec.description  = <<-DESC
                        wow! long description
                   DESC

  spec.homepage     = "https://github.com/mattwylder/ImportHell"

  spec.license      = "MIT"
  spec.author       = { "Matthew Wylder" => "email@address.com" }
  spec.source       = { :git => "https://github.com/mattwylder/ImportHell.git", :tag => spec.version.to_s }
  spec.platform = :ios, "13.0"
  spec.swift_version = "5.5"

#  spec.default_subspecs = %w[EngineObjC, EngineSwift, CarSwift]

  spec.subspec "EngineObjC" do |s|
    s.source_files = "Sources/EngineObjC/**/*.{h,m}"
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
