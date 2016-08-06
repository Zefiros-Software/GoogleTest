project "GoogleTest"

    kind "StaticLib"

    files "googletest/src/gtest-all.cc"
    includedirs "googletest/"

    zpm.export [[
        includedirs "googletest/include/"

        filter "system:macosx"
            defines "GTEST_USE_OWN_TR1_TUPLE=1"

        filter "system:not macosx"
            defines "GTEST_USE_OWN_TR1_TUPLE=0"

        filter "system:not windows"
            links "pthread"
    ]]

project "GoogleMock"

    kind "StaticLib"

    files "googlemock/src/gmock-all.cc"
    includedirs "googlemock/"

    zpm.uses "GoogleTest"

    zpm.export [[
        includedirs "googlemock/include/"
    ]]