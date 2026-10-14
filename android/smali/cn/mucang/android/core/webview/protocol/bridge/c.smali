.class public final synthetic Lcn/mucang/android/core/webview/protocol/bridge/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/core/d$a;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/c;->a:Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/c;->a:Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;->n(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
