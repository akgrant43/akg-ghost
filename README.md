# akg-ghost
akg-ghost provides two extensions to the Pharo Ghost module.

Ghost is a neat package from Denis Kudriashov that allows you to set a breakpoint on an object, regardless of which message is sent to the object.

akg-ghost extends Denis' framework with two classes:

1. ExternalSendLogger logs all messages sent to the target object using the Beacon framework.
1. ExternalSendTrace keeps a simple count of all messages sent to the target object.

As an example, to get a message tally of messages sent to a point object:

```
| point trace |

point := 2@3.
trace := ExternalSendStats logStatsFor: point.
point
	x;
	y;
	angle;
	x.
trace stats.
"a Dictionary(
	#angle->1 
	#x->2 
	#y->1 )"
```

To load akg-ghost:

```
Metacello new 
	baseline: 'AkgGhost';
	repository: 'github://akgrant43/akg-ghost:master/mc';
	load
```
