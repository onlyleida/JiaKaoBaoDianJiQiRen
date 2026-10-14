.class public final synthetic Lcn/mucang/android/core/webview/protocol/bridge/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/m;->a:Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;

    iput-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/m;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcn/mucang/android/core/webview/protocol/bridge/m;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/m;->a:Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/m;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcn/mucang/android/core/webview/protocol/bridge/m;->c:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->o(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method
