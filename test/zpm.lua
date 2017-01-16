
workspace "GoogleTest"
   configurations { "Test" }

   startproject "GoogleTest"

    project "GoogleTest"
        kind "ConsoleApp"
        files "main.cpp"

        zpm.uses "Zefiros-Software/GoogleTest"