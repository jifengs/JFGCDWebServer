
Pod::Spec.new do |spec|

  spec.name         = "JFGCDWebServer"
  spec.version      = "1.0.5"
  spec.summary      = "Handle an error when uploading the App Store font library."
  spec.homepage     = "https://github.com/jifengs/JFGCDWebServer"
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "jifeng" => "jf_feng@126.com" }
  spec.source       = { :git => "https://github.com/jifengs/JFGCDWebServer.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = '11.0'

  spec.source_files = 'JFGCDWebServer/**/*.{h,m}'
  spec.resources = "JFGCDWebServer/GCDWebUploader/GCDWebUploader.bundle"
  spec.requires_arc = true

  spec.static_framework = true

  spec.resource_bundles = {'JFGCDWebServer' => ['JFGCDWebServer/PrivacyInfo.xcprivacy']}

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
