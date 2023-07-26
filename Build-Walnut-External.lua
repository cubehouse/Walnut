-- WalnutExternal.lua

VULKAN_SDK = os.getenv("VULKAN_SDK") or "C:\\VulkanSDK\\1.3.250.1"
OPENSSL_SDK = os.getenv("OPENSSL_SDK") or "C:\\Program Files\\OpenSSL-Win64"

IncludeDir = {}
IncludeDir["VulkanSDK"] = "%{VULKAN_SDK}/Include"
IncludeDir["glm"] = "../vendor/glm"
IncludeDir["spdlog"] = "../vendor/spdlog/include"

LibraryDir = {}
LibraryDir["VulkanSDK"] = "%{VULKAN_SDK}/Lib"

Library = {}
Library["Vulkan"] = "%{LibraryDir.VulkanSDK}/vulkan-1.lib"

IncludeDir["cpp-httplib"] = "../vendor/cpp-httplib"

LibraryDir["openssl"] = "%{OPENSSL_SDK}/lib"
IncludeDir["openssl"] = "%{OPENSSL_SDK}/include"
Library["openssl"] = "%{LibraryDir.openssl}/libssl.lib"
Library["libcrypto"] = "%{LibraryDir.openssl}/libcrypto.lib"

group "Dependencies"
   include "vendor/imgui"
   include "vendor/glfw"
   include "vendor/yaml-cpp"
group ""

group "Core"
    include "Walnut/Build-Walnut.lua"

    -- Optional modules
    -- if os.isfile("Walnut-Modules/Walnut-Networking/Build-Walnut-Networking.lua") then
    --     include "Walnut-Modules/Walnut-Networking/Build-Walnut-Networking.lua"
    -- end
group ""