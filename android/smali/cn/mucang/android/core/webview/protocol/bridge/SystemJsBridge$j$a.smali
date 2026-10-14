.class Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$j;->a(Ljava/util/Map;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$j;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$j;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$j$a;->b:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$j;

    iput-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$j$a;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$j$a;->b:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$j;

    iget-object v0, v0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$j;->a:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$j$a;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->access$400(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/util/Map;)V

    return-void
.end method
