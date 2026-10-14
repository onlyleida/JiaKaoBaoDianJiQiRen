.class Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->copy(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$e;->b:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;

    iput-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$e;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$e;->a:Ljava/util/Map;

    const-string v1, "text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$e;->b:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;

    invoke-static {v1, v0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->access$800(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
