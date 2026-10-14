.class Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/core/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->addFunction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$m;->a:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$m;->a:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;

    invoke-static {p1}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->access$600(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
