$NetBSD$

--- src/3rdparty/chromium/third_party/webrtc/rtc_base/ip_address.h.orig	2020-07-15 19:01:42.000000000 +0000
+++ src/3rdparty/chromium/third_party/webrtc/rtc_base/ip_address.h
@@ -17,6 +17,10 @@
 #include <netinet/in.h>
 #include <sys/socket.h>
 #endif
+#if defined(WEBRTC_BSD)
+#include <sys/types.h>
+#include <sys/socket.h>
+#endif
 #if defined(WEBRTC_WIN)
 #include <winsock2.h>
 #include <ws2tcpip.h>
