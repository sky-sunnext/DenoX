<div align="center">

# DenoX
<p>

<em>Develop Flutter project with **High-Performance**</em>
<img src="https://github.com/vscode-icons/vscode-icons/raw/refs/heads/master/icons/file_type_js_official.svg" height="18px" alt="JavaScript" /> / <img src="https://github.com/vscode-icons/vscode-icons/raw/refs/heads/master/icons/file_type_typescript_official.svg" height="18px" alt="TypeScript" />

</p>

</div>

<a href="https://flutter.dev">
	<img
		src="https://avatars.githubusercontent.com/u/14101776?s=200&v=4"
		height="100px" alt="Flutter" align="right" />
</a> <a href="https://www.rust-lang.org">
	<img
		src="https://avatars.githubusercontent.com/u/5430905?s=200&v=4"
		height="100px" alt="Rust" style="border-radius: 50%" align="right"
		style="margin-right: 5px" />
</a> <a href="https://deno.com">
	<img
		src="https://avatars.githubusercontent.com/u/42048915?s=200&v=4"
		height="100px" alt="Deno" align="right"
		style="margin-right: 14px" />
</a>

[DenoX][denox url] is a development frame that connects [DenoCore][deno_core url] and [Flutter][flutter url] with [flutter_rust_bridge][flutter_rust_bridge url] to implement develop projects using JS or TS.

# Usage
## As a widget
1. Add the [denox_flutter](https://pub.dev/packages/denox_flutter) to your `pubspec.yaml`.

2. Add the widget:

``` flutter
DenoX.Widget(
	source: "Your JS / TS Code",
	extensions: [
		// If you have
	],
	data: <Provider> // Any data you wanted to give to JS / TS
)
```

For more, please refer to the [Wiki][denox wiki url].

## As a project
We do not provide a separate project implementation, you can build your own compilation script (such as [Rollup][rollup url]) implementation.

# Extension Developer
We are not considering the development of `Flutter <-> Rust Binder` for the time being. ~~Because it looks like we're making wheels.~~

## Flutter <-> JS Binder
Binding with [Flutter][flutter url]'s existing library to extend [DenoX][denox url]'s native functionality.

<strong>We have already packaged the API translation tool [`denox_flutter_js_codegen`][denox_flutter_js_codegen url] for you.</strong>

## Rust <-> JS Binder
If it does not involve native operations, we recommend binding Rust code, which will greatly improve performance! ~~But Rust is simply not something that humans learn.~~

## Existing Extension Catalog
### Third Party
**To this -> [denox_jsext_projects].**

You can submit the features you want or your own developed extension repository to the issue of that repository.

### Native Operations
+ [BatteryStatus][denox_jsext_battery]
+ [LocalPicker][denox_jsext_local_picker]
+ [WebNFC][denox_jsext_nfc]
+ [WebSpeech][denox_jsext_tts]
+ [WebNotifications][denox_jsext_notifications]
+ [WebAuthentication][denox_jsext_authentication]
+ [WebBackgroundFetch][denox_jsext_background_fetch]
+ [BroadcastChannel][denox_jsext_eventbus]
+ [Geolocation][denox_jsext_location]
+ [Media][denox_jsext_camera]
  + Media Capabilities
  + Media Capture and Streams
  + Media Source Extensions Experimental
  + MediaStream Recording

### Implementation of Original Functions
+ [WebTransport][denox_jsext_webtransport]
+ [WebRTC][denox_jsext_webrtc]
+ [WebBackgroundTasks][denox_jsext_isolate]

### Other
+ [AudioAPI][denox_jsext_audio]
  + HTMLAudioElement
  + AudioContext
+ [VideoAPI][denox_jsext_video]
  + HTMLVideoElement
  + VideoEncoder
  + VideoDecoder

# Contribution
- [deno_core][deno_core url]
- [flutter][flutter url]
- [flutter_rust_bridge][flutter_rust_bridge url]

- [<img src="https://avatars.githubusercontent.com/u/14101776?s=50&v=4" height="15px" /> All packages in `pubspec.yaml`](/pubspec.yaml)
- [<img src="https://avatars.githubusercontent.com/u/5430905?s=50&v=4" height="15px" style="border-radius: 50%" /> All packages in `Cargo.toml`](/rust/Cargo.toml)
- [<img src="https://docs.github.com/assets/cb-345/images/site/favicon.png" height="15px" /> All repositories in `modules/`](/modules)

[denox url]: https://github.com/sky-sunnext/denox
[denox wiki url]: https://github.com/denox/denox_flutter/wiki
[deno_core url]: https://github.com/denoland/deno_core
[flutter url]: https://flutter.dev
[flutter_rust_bridge url]: https://github.com/fzyzcjy/flutter_rust_bridge
[denox_flutter_js_codegen url]: https://github.com/sky-sunnext/denox_flutter_js_codegen
[rollup url]: https://github.com/rollup/rollup

[denox_jsext_projects]: https://github.com/denox/denox_jsext_projects
[denox_jsext_webtransport]: https://github.com/denox/denox_jsext_webtransport
[denox_jsext_local_picker]: https://github.com/denox/denox_jsext_local_picker
[denox_jsext_webrtc]: https://github.com/denox/denox_jsext_webrtc
[denox_jsext_audio]: https://github.com/denox/denox_jsext_audio
[denox_jsext_video]: https://github.com/denox/denox_jsext_video
[denox_jsext_nfc]: https://github.com/denox/denox_jsext_nfc
[denox_jsext_tts]: https://github.com/denox/denox_jsext_tts
[denox_jsext_notifications]: https://github.com/denox/denox_jsext_notifications
[denox_jsext_authentication]: https://github.com/denox/denox_jsext_authentication
[denox_jsext_background_fetch]: https://github.com/denox/denox_jsext_background_fetch
[denox_jsext_isolate]: https://github.com/denox/denox_jsext_isolate
[denox_jsext_battery]: https://github.com/denox/denox_jsext_battery
[denox_jsext_eventbus]: https://github.com/denox/denox_jsext_eventbus
[denox_jsext_location]: https://github.com/denox/denox_jsext_location
[denox_jsext_camera]: https://github.com/denox/denox_jsext_camera