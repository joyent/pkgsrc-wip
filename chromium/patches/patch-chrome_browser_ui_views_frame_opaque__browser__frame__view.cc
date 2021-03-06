$NetBSD$

--- chrome/browser/ui/views/frame/opaque_browser_frame_view.cc.orig	2020-07-08 21:41:47.000000000 +0000
+++ chrome/browser/ui/views/frame/opaque_browser_frame_view.cc
@@ -48,7 +48,7 @@
 #include "ui/views/window/vector_icons/vector_icons.h"
 #include "ui/views/window/window_shape.h"
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
 #include "ui/views/controls/menu/menu_runner.h"
 #endif
 
@@ -349,7 +349,7 @@ void OpaqueBrowserFrameView::ButtonPress
   } else if (sender == close_button_) {
     frame()->CloseWithReason(views::Widget::ClosedReason::kCloseButtonClicked);
   } else if (sender == window_icon_) {
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
     // TODO(pbos): Figure out / document why this is Linux only. This needs a
     // comment.
     views::MenuRunner menu_runner(frame()->GetSystemMenuModel(),
@@ -478,7 +478,7 @@ bool OpaqueBrowserFrameView::EverHasVisi
 
 OpaqueBrowserFrameView::FrameButtonStyle
 OpaqueBrowserFrameView::GetFrameButtonStyle() const {
-#if defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#if (defined(OS_LINUX) || defined(OS_BSD)) && !defined(OS_CHROMEOS)
   return FrameButtonStyle::kMdButton;
 #else
   return FrameButtonStyle::kImageButton;
