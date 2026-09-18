const CACHE='serenamind-v1.4.2';
const ASSETS=['./styles.css','./app.js','./cloud.js','./config.js','./manifest.webmanifest','./icon-192.png','./icon-512.png','./serenamind-logo.webp'];
self.addEventListener('install',event=>{self.skipWaiting();event.waitUntil(caches.open(CACHE).then(cache=>cache.addAll(ASSETS)))});
self.addEventListener('activate',event=>{event.waitUntil((async()=>{for(const key of await caches.keys())if(key!==CACHE)await caches.delete(key);await self.clients.claim()})())});
self.addEventListener('message',event=>{if(event.data?.type==='SKIP_WAITING')self.skipWaiting()});
self.addEventListener('fetch',event=>{
  const req=event.request;
  if(req.mode==='navigate'){
    event.respondWith((async()=>{try{const fresh=await fetch(req,{cache:'no-store'});const cache=await caches.open(CACHE);cache.put('./index.html',fresh.clone());return fresh}catch(e){return (await caches.match('./index.html'))||Response.error()}})());return;
  }
  if(new URL(req.url).origin===location.origin){
    event.respondWith((async()=>{try{const fresh=await fetch(req,{cache:'no-cache'});const cache=await caches.open(CACHE);cache.put(req,fresh.clone());return fresh}catch(e){return (await caches.match(req))||Response.error()}})())
  }
});
