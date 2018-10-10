#
# Be sure to run `pod lib lint GeoLocationCaixa.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GeoLocationCaixa'
  s.version          = '1.0.1' 
  s.summary          = 'Componente da CAIXA para pegar geolocalização do device e mandar para o Analytics'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Componente da CAIXA para pegar geolocalização do device e mandar para o Analytics, feito em swift.
                       DESC

  s.homepage         = 'https://github.com/LucasVeras/GeoLocationCaixa'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Lucas Veras Aguiar Cardoso' => 'lucas.a.cardoso@capgemini.com' }
  s.source       = { :git => "https://github.com/LucasVeras/GeoLocationCaixa.git", :commit => "7b9b0c3c10ec5678f81039bf32e069b251a2de7c", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.swift_version = '4.0'
  s.ios.deployment_target = '8.0'

  s.source_files = 'GeoLocationCaixa/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GeoLocationCaixa' => ['GeoLocationCaixa/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'SCLAlertView'
end
