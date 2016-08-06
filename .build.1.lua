project "GoogleTest"

    kind "StaticLib"

    files "src/gtest-all.cc"
    includedirs "./"

    zpm.export [[

        includedirs "include/"

        filter "system:macosx"
            defines "GTEST_USE_OWN_TR1_TUPLE=1"

        filter "system:not macosx"
            defines "GTEST_USE_OWN_TR1_TUPLE=0"

        filter "system:not windows"
            links "pthread"
    ]]