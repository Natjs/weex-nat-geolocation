# coding: utf-8

Pod::Spec.new do |s|
  s.name         = "WeexNatGeolocation"
  s.version      = "1.0.1"

  s.summary      = "Nat.js weex plugin: nat-geolocation"
  s.description  = <<-DESC
                   Nat.js module for weex: Geolocation
                   DESC

  s.homepage     = "http://natjs.com"
  s.license      = "MIT"
  s.authors      = { "nat" => "hi@natjs.com" }

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/natjs/weex-nat-geolocation.git", :tag => s.version }
  s.source_files  = "ios/Sources/*.{h,m,mm}"
  
  s.requires_arc = true
  s.dependency "WeexPluginLoader"
  s.dependency "WeexSDK"
  s.dependency "NatGeolocation"
end
