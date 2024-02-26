'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "c1a9f79443980f2d8fa5be927fe21728",
"assets/AssetManifest.bin.json": "fd3f5891c025a0563ac1d0952cdc718a",
"assets/AssetManifest.json": "7e6d14bb98d729a3b37986b8e827a3f3",
"assets/assets/images/arsenal.png": "c1e6db3d34dfb7573b971451c8d714c1",
"assets/assets/images/Bayern.png": "6eb39cfa301ab2493aac8e8f1878fc19",
"assets/assets/images/chelsea.png": "2f8867be37544e4fdb1d66a82bfcefc1",
"assets/assets/images/cl.png": "d06c645314cda0c50ea30737d9ef1dc7",
"assets/assets/images/FCBarcelona.png": "1a4064cb05bc14acf608a6e847439f41",
"assets/assets/images/leicester_city.png": "bf4ea75235a810711fec6626c6d15572",
"assets/assets/images/liverpool.png": "8598db5a6ba40dfec4ec476da48c6724",
"assets/assets/images/man_united.png": "dec60178a20bb0e792c2be94b0057ffd",
"assets/assets/images/pl.png": "f6cc6cab6f67f97c939810869180922e",
"assets/assets/images/raimon.jpg": "0c3a81acd5862764305cea38070b83d9",
"assets/assets/images/southampton.png": "4225cb6e64b3c5b509989b08c66a158b",
"assets/assets/images/stoke.png": "813dcae8bf080becd04c8b55a50c8724",
"assets/assets/images/sunderland.png": "26f3141f71a22453eb123d3036d287c3",
"assets/assets/images/swansea.png": "828ef2e5f09cda06bdb84938b99f480d",
"assets/assets/images/tottenham.png": "f6d5b8db36f91f762f41812a67afc9bf",
"assets/assets/images/west_ham.png": "a7388755d08a523caec314c9e7e8043d",
"assets/FontManifest.json": "e5599f5dd81471f5ef091a79564e4fb4",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/google_fonts/PlusJakartaSans-Bold.ttf": "7dae244963714ee2b16fcbab46661792",
"assets/google_fonts/PlusJakartaSans-BoldItalic.ttf": "fdbe93c588403b5c67963757775c98cb",
"assets/google_fonts/PlusJakartaSans-ExtraBold.ttf": "9bfdb6bb1fda2806463b64e44c5eaed9",
"assets/google_fonts/PlusJakartaSans-ExtraBoldItalic.ttf": "ba442a7aab453d20c5709ae7ca0837ac",
"assets/google_fonts/PlusJakartaSans-ExtraLight.ttf": "bd1c3b0ba032000f9e62c171bd0558eb",
"assets/google_fonts/PlusJakartaSans-ExtraLightItalic.ttf": "4a090ca0e9382ed4996f23042b335391",
"assets/google_fonts/PlusJakartaSans-Italic.ttf": "5d157c8d8e47cc6e2da60b8158e78ca8",
"assets/google_fonts/PlusJakartaSans-Light.ttf": "d6fb190614a9297c6263f85094463592",
"assets/google_fonts/PlusJakartaSans-LightItalic.ttf": "0bf00206fd7547022cfa3e0ec073e427",
"assets/google_fonts/PlusJakartaSans-Medium.ttf": "9fb6d71fc9edf9db455adeb04da9795c",
"assets/google_fonts/PlusJakartaSans-MediumItalic.ttf": "6efa621b283ff999f05bc4d672de8c95",
"assets/google_fonts/PlusJakartaSans-Regular.ttf": "f539ae4a8884822210a4553cc88ca3dc",
"assets/google_fonts/PlusJakartaSans-SemiBold.ttf": "08d59825aa09f741c9272b85e6a1adbf",
"assets/google_fonts/PlusJakartaSans-SemiBoldItalic.ttf": "9f3904d1769f5e804c644e59c203f447",
"assets/google_fonts/TitilliumWeb-Black.ttf": "8d8d73518f2f1d36654af1b92fbfba99",
"assets/google_fonts/TitilliumWeb-Bold.ttf": "d49a8ee8f1baee082909ab2e7c4062d1",
"assets/google_fonts/TitilliumWeb-BoldItalic.ttf": "cffdbe92e1d7e1c0e730b89aabc4ee11",
"assets/google_fonts/TitilliumWeb-ExtraLight.ttf": "6a9cdf9fdee47c63bc9c6c9ac284b32f",
"assets/google_fonts/TitilliumWeb-ExtraLightItalic.ttf": "347c2449963064a73858ca1e0dd3a4da",
"assets/google_fonts/TitilliumWeb-Italic.ttf": "b7e4f5f7e443acc7c6340e8ae40926de",
"assets/google_fonts/TitilliumWeb-Light.ttf": "71d53d9506f88f09a25f326f29de4201",
"assets/google_fonts/TitilliumWeb-LightItalic.ttf": "f47afb7520f8f909a457ed2d0fc5997c",
"assets/google_fonts/TitilliumWeb-Regular.ttf": "57e937e4eef39e324bd4f26745053687",
"assets/google_fonts/TitilliumWeb-SemiBold.ttf": "c21564022e51245ca150237eeb23a2bb",
"assets/google_fonts/TitilliumWeb-SemiBoldItalic.ttf": "20d8982e3d57983b66ae8dfcdcf48501",
"assets/NOTICES": "0eb1e9a924bfe2e335f5a75a862d6414",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/iconsax/lib/assets/fonts/iconsax.ttf": "071d77779414a409552e0584dcbfd03d",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "f64bdb5d938914b4fac144c2c3aa1c94",
"canvaskit/canvaskit.wasm": "fcab7f9681c8a50daadbc3c242319078",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "907d264290252a44de8422c5898c4158",
"canvaskit/chromium/canvaskit.wasm": "f6d2a460565f3f70c54aa207ce502b69",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "01a3e940f2ae353a6097a61be6efc01f",
"canvaskit/skwasm.wasm": "2eba7de284f5b90a5710d2fc922efedd",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "398a3c79283ed9c01bae14e41d6aed1d",
"/": "398a3c79283ed9c01bae14e41d6aed1d",
"main.dart.js": "1d496b023f6ab7583714d29a8bab2aa0",
"manifest.json": "151ccd9266762df03c0a36c000a70d57",
"version.json": "abce5f5ec41188d0169babaa720dc38a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
