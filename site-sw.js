// Simple offline cache for the Annusha ASCII site
const CACHE = 'annusha-ascii-v1';
// Use relative paths so this works under subpaths (e.g., GitHub Pages /repo/)
const ASSETS = [
  './',
  'index.html',
  'notepad.html',
  'art/annusha_plane_flag.html',
  'art/annusha_cubist_plane.html',
  'art/notepad_frames.html',
  'annusha-love-flight/index.html'
];

self.addEventListener('install', (e)=>{
  e.waitUntil(caches.open(CACHE).then(c=>c.addAll(ASSETS)).then(()=>self.skipWaiting()));
});

self.addEventListener('activate', (e)=>{
  e.waitUntil(
    caches.keys().then(keys=>Promise.all(keys.map(k=>k===CACHE?null:caches.delete(k)))).then(()=>self.clients.claim())
  );
});

self.addEventListener('fetch', (e)=>{
  const req = e.request;
  if (req.method !== 'GET') return;
  e.respondWith(
    caches.match(req).then(hit=> hit || fetch(req).then(res=>{
      const copy = res.clone();
      caches.open(CACHE).then(c=>c.put(req, copy)).catch(()=>{});
      return res;
    }).catch(()=> caches.match('/index.html')))
  );
});
