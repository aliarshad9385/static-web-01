const CACHE = 'soho-whisper-v1';
const ASSETS = [
  './',
  './index.html'
];
self.addEventListener('install', (e)=>{
  e.waitUntil(caches.open(CACHE).then(c=>c.addAll(ASSETS)).then(()=>self.skipWaiting()));
});
self.addEventListener('activate', (e)=>{
  e.waitUntil(caches.keys().then(keys=>Promise.all(keys.filter(k=>k!==CACHE).map(k=>caches.delete(k)))));
  self.clients.claim();
});
self.addEventListener('fetch', (e)=>{
  const req = e.request;
  if (req.method !== 'GET') return;
  e.respondWith(
    caches.match(req).then(hit=> hit || fetch(req).then(res=>{
      const resClone = res.clone();
      caches.open(CACHE).then(c=> c.put(req, resClone));
      return res;
    }).catch(()=> caches.match('./index.html')))
  );
});

