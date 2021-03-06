$NetBSD$

Support NetBSD.

--- scribus/scclocale.cpp.orig	2019-07-30 22:35:07.000000000 +0000
+++ scribus/scclocale.cpp
@@ -27,7 +27,7 @@ ScCLocale::ScCLocale()
 #if defined(Q_OS_WIN)
 	cLocale = _create_locale(LC_ALL, "C");
 #else
-  #if not defined(Q_OS_SOLARIS) and not defined(Q_OS_OPENBSD) and not defined(Q_OS_FREEBSD) and not defined(Q_OS_HAIKU)
+  #if not defined(Q_OS_SOLARIS) and not defined(Q_OS_OPENBSD) and not defined(Q_OS_FREEBSD) and not defined(Q_OS_NETBSD) and not defined(Q_OS_HAIKU)
 	cLocale = newlocale(LC_ALL_MASK, "C", nullptr);
   #endif
 #endif
@@ -38,7 +38,7 @@ ScCLocale::~ScCLocale()
 #if defined(Q_OS_WIN)
 	_free_locale(cLocale);
 #else
-  #if not defined(Q_OS_SOLARIS) and not defined(Q_OS_OPENBSD) and not defined(Q_OS_FREEBSD) and not defined(Q_OS_HAIKU)
+  #if not defined(Q_OS_SOLARIS) and not defined(Q_OS_OPENBSD) and not defined(Q_OS_FREEBSD) and not defined(Q_OS_NETBSD) and not defined(Q_OS_HAIKU)
 	freelocale(cLocale);
   #endif
 #endif
@@ -190,7 +190,7 @@ double ScCLocale::strtod(const char * st
 		return result;
 	}
 
-#if defined(Q_OS_SOLARIS) || defined (Q_OS_OPENBSD) || defined(Q_OS_FREEBSD) || defined(Q_OS_HAIKU)
+#if defined(Q_OS_SOLARIS) || defined (Q_OS_OPENBSD) || defined(Q_OS_FREEBSD) || defined(Q_OS_NETBSD) || defined(Q_OS_HAIKU)
 	double result(0.0);
 	std::streamoff bytesRead;
 	std::istringstream sstream(str);
