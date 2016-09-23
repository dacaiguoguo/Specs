Pod::Spec.new do |s|
    s.name         = "LvmmCategory"
    s.version      = "1.0.1"
    s.summary      = "Make working with associated objects much more pleasurable."
    s.description  = "A header file with macros that synthesize accessors for
    associated objects, taking the boilerplate out of your hands. Also, a category
    that adds an NSMutableDictionary to NSObject to make adding abitrary key/values
    a breeze."
    s.homepage     = "https://github.com/<GITHUB_USERNAME>/LvmmCategory"
    s.license      = 'MIT'
    s.author       = { "dacaiguoguo" => "dacaiguoguo@gmail.com" }
    s.source       = { :git => "https://github.com/<GITHUB_USERNAME>/LvmmCategory.git", :tag => s.version.to_s }

    s.ios.deployment_target = '7.0'
    s.frameworks = 'Foundation'
    s.requires_arc = true

    s.subspec 'NS+Category' do |c|
        c.source_files = 'LvmmCategory/NS+Category/*.{h,m}'
    end

    s.subspec 'UI+Category' do |d|
        d.source_files = 'LvmmCategory/UI+Category/*.{h,m}'
    end
    s.resource = 'LvmmCategory/LvmmCategory.bundle'
    s.pod_target_xcconfig = { 'GCC_WARN_ABOUT_RETURN_TYPE' => 'YES_ERROR','CC_WARN_UNINITIALIZED_AUTOS' => 'YES_AGGRESSIVE','CLANG_WARN_DIRECT_OBJC_ISA_USAGE' => 'YES_ERROR', 'CLANG_WARN_OBJC_ROOT_CLASS' => 'YES_ERROR' }
end
