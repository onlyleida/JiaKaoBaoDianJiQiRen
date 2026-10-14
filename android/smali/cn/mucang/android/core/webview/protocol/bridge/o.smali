.class public final synthetic Lcn/mucang/android/core/webview/protocol/bridge/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/http/c/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/o;->a:Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;

    iput-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/o;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(JJZ)V
    .locals 7

    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/o;->a:Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/o;->b:Ljava/lang/String;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->q(Ljava/lang/String;JJZ)V

    return-void
.end method
