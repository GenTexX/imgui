project "imgui"
	kind "StaticLib"
	language "C++"
	
	targetdir ("bin/" .. outputDir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputDir .. "/%{prj.name}")
	
	files
	{
		"imconfig.h",
		"imgui.cpp",
		"imgui.h",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h"
	}
	
	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "on"
		
	filter {"system:windows", "configurations:Release"}
		buildoptions "/MT"