require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = 'RNContactsWrapper'
  s.version          = package['version']
  s.summary          = "Contacts plugin to wrap native contact pickers for iOS and Android."
  s.license          = package['license']
  s.homepage         = 'https://github.com/magicismight/react-native-svg'
  s.authors          = 'Horcrux Chen'
  s.source           = { :git => 'https://github.com/LynxITDigital/react-native-contacts-wrapper', :tag => "v#{s.version}" }
  s.source_files     = 'ios/**/*.{h,m}'
  s.requires_arc     = true
  s.platforms        = { :ios => "8.0" }
  s.dependency         'React'
end
