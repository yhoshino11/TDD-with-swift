source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

def common_pods
  pod 'Alamofire'
  pod 'Mockingjay'
  pod 'SwiftyJSON', git: 'https://github.com/SwiftyJSON/SwiftyJSON.git'
end

def testing_pods
  pod 'Quick'
  pod 'Nimble'
end

target 'sample' do
  common_pods
end

target 'sampleTests' do
  common_pods
  testing_pods
end

target 'sampleUITests' do
  common_pods
  testing_pods
end
