# Unity 100/101 external modules: verified boundary and local replacement

Read-only investigation, 2026-10-15. Source root: `/Users/leida/Documents/Codex/2026-10-14/ne/work/JiaKaoBaoDianJiQiRen`. All source references below are relative to that root. Only analysis inventories were written under `work/unity-analysis`; no APK, production source, or Git history was changed. No vendor service was queried.

## Conclusion

The APK contains a functioning Unity bootstrap, its loading UI, the Java/Unity bridge, generic UI libraries, and procedural road/parking geometry algorithms. It does **not** contain the external `CTxAppManager` implementation or the original 101 UI package in the inspected Unity payload. Existing content cannot by itself restore the original teaching homepage, vehicle models, teaching animations, or all original scene interactions.

A new, explicitly local replacement is feasible without rebuilding the Unity player: compile a small managed type-100 DLL exposing the bootstrap contract, serve an actual type-101 local UI manifest consumed by that DLL, create a small native Unity Canvas UI, and use existing bridge messages to open the real Android settings/about screens. This is newly implemented local behavior, not recovered original logic. Actual compilation/runtime compatibility still needs emulator verification.

## Exact loader contract and failure behavior

- `unity-csharp/Assembly-CSharp/StartMamager.cs:17`: `Awake` adds `PlatformCOMProxy`, initializes `DTxDispense`, registers `ANDROID_MESSAGE`, and sends request ID 100.
- `StartMamager.cs:32`: only response `id == 100`, `code == 0`, non-null `data` is processed. `data` must deserialize as `DTxInitPath`, whose `pathMap` is a `Dictionary<string,string>` (`DTxInitPath.cs:5`).
- `StartMamager.cs:37` and `:44`: both string keys `100` and `101` are mandatory.
- `StartMamager.cs:51`: type 100 is a raw managed assembly loadable by `Assembly.LoadFrom(pathMap["100"])`, not a ZIP or arbitrary placeholder.
- `StartMamager.cs:52`: exact full type name is `CTxAppManager` (no namespace prefix). `:53` adds it as a component to the existing Manager GameObject. A replacement should be `public class CTxAppManager : MonoBehaviour`.
- `StartMamager.cs:54`: default public `GetMethod("SetInfo")` is invoked with null target and two values: loaded `Assembly` and type-101 path string. A minimal compatible replacement is a single public static `void SetInfo(Assembly assembly, string uiPath)` method. The absent original method's exact declared parameter types/return type are not independently recoverable; these are the compatible implementation choices supported by the call site.
- `AddComponent` occurs before `SetInfo`. Do not require the supplied path in `Awake`; let `Awake` save the instance and let `SetInfo` store configuration, then initialize in `Start`/a subsequent frame. Also delay hiding the loading panel until its `Start` listener has registered, or explicitly deactivate its background after successful replacement initialization.
- `StartMamager.cs:59`: bootstrap unregisters its Android listener after successful reflection call. Replacement UI that needs inbound data must register its own listener and unregister on destroy.
- `StartMamager.cs:62`: exceptions display loading failure, send log ID 20011, and request ID 101. Java `teachingk2/unity/e/d0.java:37` responds by showing a quit-only failure dialog and asynchronously deleting both resources through `p007unity/business/h.java:83`. Thus invalid type-100 placeholder files can be downloaded successfully and still trigger deletion/retry loops.
- `LoadingPanel.cs:36` registers `loading_panel_progress` (`string,float`) and `loading_panel_active` (`bool`). `:55` hides/shows `bg`. These existing messages can be reused after a local replacement UI is ready.

## Java download contract

- `java/sources/cn/mucang/android/jiakaoyi/teachingk2/p007unity/business/h.java:141`: checks prior path existence, falls back to version 0 when missing, and requests upgrade for each type.
- `java/sources/cn/mucang/jiakaoyi/uilib/upgrade/c.java:18`: POST `/api/open/upgrade/check-upgrade.htm`, raw JSON list of `UpgradeParameter`; `m(type,version)` sets those two fields (`:24`) and takes first response item (`:33`). Return only the matching requested type, not an unrelated multi-resource first item.
- `h.java:176`: raw download target is external-files `/_u_prefix_<type>_<version>`; no extension is required and no unzip step is performed. `:178` uses the provided MD5.
- `h.java:206`: persists `UpgradeLocalInfo(type,version,path)` as `_key_res_info_<type>` and updates the in-memory cache.
- `h.java:190`: bridge path map is returned only when both files exist. `100` is a filesystem path; `101` becomes `file://` plus filesystem path (`:198`).
- No available code shown here proves the original type-101 internal format or asset names. It is called UI resources and is passed as a file URI, but the only consumer implementation is inside absent type 100. Do not claim the original 101 is reconstructable as a known AssetBundle schema.
- For a new replacement, type 101 may legitimately be a documented JSON UI manifest because the new type-100 implementation is its consumer. It must contain real configuration read by the new DLL and be labelled local/replacement; do not advertise it as the recovered original UI asset bundle.

## Bundled resource inventory

Read with UnityPy 1.25.4 as data only (no target code executed). Machine-readable evidence: `reports/unity-bundled-scene-summary.json`, `unity-bundled-object-inventory.json`, and `unity-bundle-signature-scan.json`.

`android/assets/bin/Data/data.unity3d` is a UnityFS container, Unity 2019.4.17f1, 923,545 bytes, SHA-256 `ce9591e922e06ed395719bb31a34b96b94d754dc733ccbdba9ecf47a3e476696`.

- BuildSettings has exactly one scene: `Assets/[Game]/Scenes/game.unity` (serialized file `level0`).
- 557 serialized objects include 417 MonoScript metadata references, 55 shaders, 17 GameObjects, 12 MonoBehaviours, 3 textures, 3 sprites, and 2 materials. MonoScript metadata counts do not imply 417 app features.
- GameObjects: Test, Manager, AndroidCOM, Directional Light, EventSystem, loadingLevel, scene, Text, LoadingPanel, bar, Image, alertLevel, Canvas, panelLevel, windowLevel, barbg, bg.
- Actual attached MonoBehaviours are StartMamager, AndroidCOM, LoadingPanel, EventSystem, StandaloneInputModule, four Image components, CanvasScaler, GraphicRaycaster and Text. No CTxAppManager instance/implementation is in this scene.
- Textures: `main_11` 1024×640; `common_7` 512×15; `main_8` 401×512. They belong to the bootstrap/loading scene.
- This bundle has no Mesh, AnimationClip, Animator, Camera, or AudioClip objects. Its scene therefore contains neither a ready teaching-world camera nor vehicle/road meshes/teaching animations.
- `unity default resources` contains Arial, generic Unity controls and primitive meshes (Cube, Sphere, Cylinder, Capsule, Plane, Quad, etc.); these are usable for a newly drawn UI/demo, not original teaching art.
- Scanned the first 32 bytes of all 335 files under `android/assets` and `android/res/raw`: only `data.unity3d` has UnityFS/UnityRaw/UnityWeb magic. This rules out another ordinary unencrypted bundle in that scanned scope; it does not prove that no opaque/encrypted proprietary file could contain other data.
- Existing C# export of all 105 bundled DLLs has no `CTxAppManager` class definition; only the bootstrap reference. The main Assembly-CSharp has only bootstrap/loading/init/error/lightmap helper source. Do not re-export all DLLs to look for missing downloaded code.

## Reusable geometry is real but needs explicit inputs

`unity-csharp/MC.MeshMaker/MCT.MeshMaker/MeshMakerManager.cs:40` dispatches K2 geometry such as side parking, reverse parking, curves and right angles; `:164` handles K3; `:422` handles terrain/building shapes. This is a usable procedural library, not a ready scene.

For a future synthetic geometry demo:

1. Add `MeshMakerManager` and initialize it (`Start:26` sets singleton and constructs MakerFactory), set a valid synthetic origin via `SetOragin(Gps)` at `:35`.
2. Supply geometry parameters and material registry. `K2Mesh.cs:24` defaults real/dotted material IDs to 11/10; it gets materials from the manager at `:32`. `MeshMakerManager.cs:533` has `SetMaterial`; absent entries return null at `:545`.
3. For reverse parking, `K2DaoChe.cs:8` requires gps1..gps8; `K2DaoCheMesh.cs:23` computes and creates line geometry, labels it using built-in Arial through `K2Mesh.cs:85`. Line width and start points are `K2Data.cs:8` onward.
4. Add a camera; none exists in the bootstrap scene. Some other maker classes use `Resources.Load("base_other/Material/common_mat")` and prefabs/sprites, so do not assume every shape works without registering/providing its additional assets.
5. Keep demonstration coordinates/data explicitly synthetic. Original training site geometry, camera behavior, vehicle asset selection, lesson orchestration and rule logic in the missing dynamic assembly are not recovered by this library.

## Minimum useful replacement and verification

A practical first increment is a local Unity status/menu page with clearly visible “local compatibility UI” label, loaded resource versions, settings and about buttons, and a bounded bridge message log. Build only the new DLL against original managed Unity assemblies; do not try to rebuild the 105 decompiled framework projects.

Use a real type-101 JSON manifest such as `{ "schema":1, "mode":"local-compatibility", "title":"Local debug", "menus":[{"label":"Settings","action":"SETTING"},{"label":"About","action":"ABOUT"}] }`; this schema is a new design, not an inferred original format. Parse the supplied file URI to a local path before reading. Use bundled Arial/Unity UI to generate controls. If Chinese font glyph fallback fails in the emulator, a system-font fallback can be tested separately rather than pretending the missing art was restored.

Verified safe navigation bridge:

```json
{"id":20001,"code":0,"msg":"","args":"","data":{"url":"SETTING","content":""}}
```

- `java/.../teachingk2/unity/f/w0.java:158` registers ID 20001 as UnityUIActionModel with handler g0.
- `java/.../teachingk2/p007unity/models/UnityUIActionModel.java:7`: fields content and url.
- `java/.../teachingk2/unity/e/g0.java:152`: SETTING calls `SettingActivity.o(activity,2)`; ABOUT at `:99` calls the real AboutActivity.
- `java/.../unity/c/d.java:45` requires integer `code` and `id`; valid data is decoded when code == 0. Include both keys and a real data object.
- `unity-csharp/mct/MCT.PlatformCOM/AndroidCOM.cs:14` calls currentActivity.CallFromUnity and routes any synchronous nonempty response to the message center. Native async responses target GameObject AndroidCOM/CallFromNative (`java/.../unity/c/d.java:130`); retain that object.
- Do not wire EXIT, braking/security, training or login-dependent actions merely to make a demo look complete: their handlers affect real application state and require their own model/init investigation.

Verification sequence: compile DLL against original Mono/Unity-compatible references; register 100 and 101 with actual size/MD5 and increasing versions; verify both downloads, ID-100 paths, Assembly.LoadFrom, CTxAppManager addition and successful SetInfo; confirm local UI is visible and survives background/resume; use settings/about buttons and return; verify no ID-101 error/deletion, NullReferenceException or vendor traffic. Loading this module resolves the missing-module boundary only. Normal splash/login/selected-site prerequisites remain separate and need either actual local fixtures or an explicit local launch route. Success must be reported as a new local UI, not full original teaching functionality.
