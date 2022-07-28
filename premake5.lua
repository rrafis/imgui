project "ImGui"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	targetdir (TargetDir)
	objdir (ObjDir)

	files {
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

	filter "platforms:Windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "platforms:Linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

    filter "platforms:MacOS"
        pic "On"
        cppdialect "C++17"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Development"
		runtime "Debug"
		optimize "on"
		symbols "on"

	filter "configurations:Shipping"
		runtime "Release"
		optimize "Full"
        symbols "off"