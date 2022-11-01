Pod::Spec.new do |spec|
    spec.name                     = 'kotlinmultiplatformsharedmodule'
    spec.version                  = '0.8.3'
    spec.homepage                 = 'Link to the Shared Module homepage'
    spec.source                   = { 
                                      :http => 'https://gitlab.com/api/v4/projects/40523916/packages/maven/apps-android-wikipedia/kotlinmultiplatformsharedmodule-kmmbridge/0.8.3/kotlinmultiplatformsharedmodule-kmmbridge-0.8.3.zip',
                                      :type => 'zip',
                                      :headers => ['Accept: application/octet-stream']
                                    }
    spec.authors                  = ''
    spec.license                  = ''
    spec.summary                  = 'Some description for the Shared Module'
    spec.vendored_frameworks      = 'kotlinmultiplatformsharedmodule.xcframework'
    spec.libraries                = 'c++'
    spec.ios.deployment_target = '14.1'
            
            
end