#include "include/denox/denox_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "denox_plugin.h"

void DenoxPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  denox::DenoxPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
