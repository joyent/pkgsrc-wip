$NetBSD$

--- runtime/druntime/src/core/sys/posix/unistd.d.orig	2016-01-21 15:39:03.000000000 +0000
+++ runtime/druntime/src/core/sys/posix/unistd.d
@@ -116,6 +116,11 @@ else version( FreeBSD )
     off_t lseek(int, off_t, int) @trusted;
     int   ftruncate(int, off_t) @trusted;
 }
+else version( NetBSD )
+{
+    off_t lseek(int, off_t, int) @trusted;
+    int   ftruncate(int, off_t) @trusted;
+}
 else version( Solaris )
 {
     version ( D_LP64 )
@@ -808,6 +813,117 @@ else version( FreeBSD )
         _CS_POSIX_V6_WIDTH_RESTRICTED_ENVS =  14,
     }
 }
+else version( NetBSD )
+{
+    enum
+    {
+        F_ULOCK	       = 0,	/* unlock locked section */
+     	F_LOCK	       = 1,	/* lock a section for exclusive use */
+     	F_TLOCK	       = 2,	/* test and lock a section for exclusive use */
+     	F_TEST	       = 3,	/* test a section for locks by other procs */
+    }
+    enum
+    {
+        _SC_ARG_MAX	        =  1,
+	_SC_CHILD_MAX		=  2,
+	_O_SC_CLK_TCK		=  3, /* Old version, always 100 */
+	_SC_NGROUPS_MAX		=  4,
+	_SC_OPEN_MAX		=  5,
+	_SC_JOB_CONTROL		=  6,
+	_SC_SAVED_IDS		=  7,
+	_SC_VERSION		=  8,
+	_SC_BC_BASE_MAX		=  9,
+	_SC_BC_DIM_MAX		= 10,
+	_SC_BC_SCALE_MAX	= 11,
+	_SC_BC_STRING_MAX	= 12,
+	_SC_COLL_WEIGHTS_MAX	= 13,
+	_SC_EXPR_NEST_MAX	= 14,
+	_SC_LINE_MAX		= 15,
+	_SC_RE_DUP_MAX		= 16,
+	_SC_2_VERSION		= 17,
+	_SC_2_C_BIND		= 18,
+	_SC_2_C_DEV		= 19,
+	_SC_2_CHAR_TERM		= 20,
+	_SC_2_FORT_DEV		= 21,
+	_SC_2_FORT_RUN		= 22,
+	_SC_2_LOCALEDEF		= 23,
+	_SC_2_SW_DEV		= 24,
+	_SC_2_UPE		= 25,
+	_SC_STREAM_MAX		= 26,
+	_SC_TZNAME_MAX		= 27,
+	_SC_PAGESIZE		= 28,
+	_SC_PAGE_SIZE		= _SC_PAGESIZE,	/* 1170 compatibility */
+	_SC_FSYNC		= 29,
+	_SC_XOPEN_SHM		= 30,
+	_SC_SYNCHRONIZED_IO	= 31,
+	_SC_IOV_MAX		= 32,
+	_SC_MAPPED_FILES	= 33,
+	_SC_MEMLOCK		= 34,
+	_SC_MEMLOCK_RANGE	= 35,
+	_SC_MEMORY_PROTECTION	= 36,
+	_SC_LOGIN_NAME_MAX	= 37,
+	_SC_MONOTONIC_CLOCK	= 38,
+	_SC_CLK_TCK		= 39, /* New, variable version */
+	_SC_ATEXIT_MAX		= 40,
+	_SC_THREADS		= 41,
+	_SC_SEMAPHORES		= 42,
+	_SC_BARRIERS		= 43,
+	_SC_TIMERS		= 44,
+	_SC_SPIN_LOCKS		= 45,
+	_SC_READER_WRITER_LOCKS = 46,
+	_SC_GETGR_R_SIZE_MAX	= 47,
+	_SC_GETPW_R_SIZE_MAX	= 48,
+	_SC_CLOCK_SELECTION	= 49,
+	_SC_ASYNCHRONOUS_IO	= 50,
+	_SC_AIO_LISTIO_MAX	= 51,
+	_SC_AIO_MAX		= 52,
+	_SC_MESSAGE_PASSING	= 53,
+	_SC_MQ_OPEN_MAX		= 54,
+	_SC_MQ_PRIO_MAX		= 55,
+	_SC_PRIORITY_SCHEDULING = 56,
+	_SC_THREAD_DESTRUCTOR_ITERATIONS = 57,
+	_SC_THREAD_KEYS_MAX		= 58,
+	_SC_THREAD_STACK_MIN		= 59,
+	_SC_THREAD_THREADS_MAX		= 60,
+	_SC_THREAD_ATTR_STACKADDR	= 61,
+	_SC_THREAD_ATTR_STACKSIZE 	= 62,
+	_SC_THREAD_PRIORITY_SCHEDULING	= 63,
+	_SC_THREAD_PRIO_INHERIT 	= 64,
+	_SC_THREAD_PRIO_PROTECT		= 65,
+	_SC_THREAD_PROCESS_SHARED	= 66,
+	_SC_THREAD_SAFE_FUNCTIONS	= 67,
+	_SC_TTY_NAME_MAX		= 68,
+	_SC_HOST_NAME_MAX		= 69,
+	_SC_PASS_MAX			= 70,
+	_SC_REGEXP			= 71,
+	_SC_SHELL			= 72,
+	_SC_SYMLOOP_MAX			= 73,
+ /* Actually, they are not supported or implemented yet */
+	_SC_V6_ILP32_OFF32		= 74,
+	_SC_V6_ILP32_OFFBIG		= 75,
+	_SC_V6_LP64_OFF64		= 76,
+	_SC_V6_LPBIG_OFFBIG		= 77,
+	_SC_2_PBS			= 80,
+	_SC_2_PBS_ACCOUNTING		= 81,
+	_SC_2_PBS_CHECKPOINT		= 82,
+	_SC_2_PBS_LOCATE		= 83,
+	_SC_2_PBS_MESSAGE		= 84,
+	_SC_2_PBS_TRACK			= 85,
+ /* These are implemented */
+	_SC_SPAWN			= 86,
+	_SC_SHARED_MEMORY_OBJECTS	= 87,
+ /* Extensions found in Solaris and Linux. */
+	_SC_PHYS_PAGES		= 121,
+
+ /* Commonly provided sysconf() extensions */
+	_SC_NPROCESSORS_CONF	= 1001,
+	_SC_NPROCESSORS_ONLN	= 1002,
+ /* Native variables */
+	_SC_SCHED_RT_TS		= 2001,
+	_SC_SCHED_PRI_MIN	= 2002,
+	_SC_SCHED_PRI_MAX	= 2003,
+    }
+}
 else version( CRuntime_Bionic )
 {
     enum F_OK       = 0;
@@ -1260,6 +1376,33 @@ else version( FreeBSD )
     int        usleep(useconds_t) @trusted;
     pid_t      vfork();
 }
+else version( NetBSD )
+{
+    char*      crypt(in char*, in char*);
+    char*      ctermid(char*);
+    void       encrypt(ref char[64], int);
+    int        fchdir(int);
+    c_long     gethostid();
+    pid_t      getpgid(pid_t);
+    pid_t      getpgrp();
+    pid_t      getsid(pid_t);
+    char*      getwd(char*); // LEGACY
+    int        lchown(in char*, uid_t, gid_t);
+    int        lockf(int, int, off_t);
+    int        nice(int);
+    ssize_t    pread(int, void*, size_t, off_t);
+    ssize_t    pwrite(int, in void*, size_t, off_t);
+    int        setpgid(pid_t, pid_t);
+    int        setpgrp(pid_t, pid_t);
+    int        setregid(gid_t, gid_t);
+    int        setreuid(uid_t, uid_t);
+    void       swab(in void*, void*, ssize_t);
+    void       sync();
+    int        truncate(in char*, off_t);
+    useconds_t ualarm(useconds_t, useconds_t);
+    int        usleep(useconds_t);
+    pid_t      vfork();
+}
 else version( CRuntime_Bionic )
 {
     int        fchdir(int) @trusted;
