# tsc-crasher

`./crash.sh` or `./crash-yarn.sh`

## Output

```
<--- Last few GCs --->

[1360:0x104800000]    55980 ms: Mark-sweep 1413.8 (1560.2) -> 1413.6 (1562.7) MB, 1429.0 / 0.0 ms  allocation failure GC in old space requested
[1360:0x104800000]    57879 ms: Mark-sweep 1413.6 (1562.7) -> 1413.6 (1522.2) MB, 1897.8 / 0.0 ms  last resort 
[1360:0x104800000]    59645 ms: Mark-sweep 1413.6 (1522.2) -> 1413.6 (1522.2) MB, 1764.4 / 0.0 ms  last resort 


<--- JS stacktrace --->

==== JS stack trace =========================================

Security context: 0x24e7752a66a1 <JS Object>
    1: copyProperties [/Users/foo/tsc_crash/use/node_modules/typescript/lib/tsc.js:~778] [pc=0x1f2753e3f9fa](this=0x3a15d97ca3a9 <an Object with map 0x32f36cd54d71>,source=0x1ba25bfb08b1 <an Object with map 0x32f36cd0bec1>,target=0x2344a9e571e9 <an Object with map 0x32f36cd0bdb9>)
    2: objectTypeRelatedTo [/Users/foo/tsc_crash/use/node_modules/typescr...

FATAL ERROR: CALL_AND_RETRY_LAST Allocation failed - JavaScript heap out of memory
 1: node::Abort() [/usr/local/bin/node]
 2: node::FatalException(v8::Isolate*, v8::Local<v8::Value>, v8::Local<v8::Message>) [/usr/local/bin/node]
 3: v8::Utils::ReportOOMFailure(char const*, bool) [/usr/local/bin/node]
 4: v8::internal::V8::FatalProcessOutOfMemory(char const*, bool) [/usr/local/bin/node]
 5: v8::internal::Factory::NewFixedArray(int, v8::internal::PretenureFlag) [/usr/local/bin/node]
 6: v8::internal::HashTable<v8::internal::NameDictionary, v8::internal::NameDictionaryShape, v8::internal::Handle<v8::internal::Name> >::New(v8::internal::Isolate*, int, v8::internal::MinimumCapacity, v8::internal::PretenureFlag) [/usr/local/bin/node]
 7: v8::internal::HashTable<v8::internal::NameDictionary, v8::internal::NameDictionaryShape, v8::internal::Handle<v8::internal::Name> >::EnsureCapacity(v8::internal::Handle<v8::internal::NameDictionary>, int, v8::internal::Handle<v8::internal::Name>, v8::internal::PretenureFlag) [/usr/local/bin/node]
 8: v8::internal::Dictionary<v8::internal::NameDictionary, v8::internal::NameDictionaryShape, v8::internal::Handle<v8::internal::Name> >::Add(v8::internal::Handle<v8::internal::NameDictionary>, v8::internal::Handle<v8::internal::Name>, v8::internal::Handle<v8::internal::Object>, v8::internal::PropertyDetails, int*) [/usr/local/bin/node]
 9: v8::internal::LookupIterator::ApplyTransitionToDataProperty(v8::internal::Handle<v8::internal::JSObject>) [/usr/local/bin/node]
10: v8::internal::Object::AddDataProperty(v8::internal::LookupIterator*, v8::internal::Handle<v8::internal::Object>, v8::internal::PropertyAttributes, v8::internal::Object::ShouldThrow, v8::internal::Object::StoreFromKeyed) [/usr/local/bin/node]
11: v8::internal::StoreIC::Store(v8::internal::Handle<v8::internal::Object>, v8::internal::Handle<v8::internal::Name>, v8::internal::Handle<v8::internal::Object>, v8::internal::Object::StoreFromKeyed) [/usr/local/bin/node]
12: v8::internal::KeyedStoreIC::Store(v8::internal::Handle<v8::internal::Object>, v8::internal::Handle<v8::internal::Object>, v8::internal::Handle<v8::internal::Object>) [/usr/local/bin/node]
13: v8::internal::Runtime_KeyedStoreIC_Miss(int, v8::internal::Object**, v8::internal::Isolate*) [/usr/local/bin/node]
14: 0x1f2753a843a7
```