usage "UGoogleTest"
    includedirs "googletest/include/"

    filter "system:macosx"
        defines "GTEST_USE_OWN_TR1_TUPLE=1"

    filter "system:not macosx"
        defines "GTEST_USE_OWN_TR1_TUPLE=0"

    filter "system:not windows"
        links "pthread"

project "GoogleTest"

    kind "StaticLib"

    files "googletest/src/gtest-all.cc"
    includedirs "googletest/"

    uses "UGoogleTest"

usage "UGoogleMock"

    includedirs "googlemock/include/"

project "GoogleMock"

    kind "StaticLib"

    files "googlemock/src/gmock-all.cc"
    includedirs "googlemock/"

    uses {
        "GoogleTest",
        "UGoogleMock"
    }