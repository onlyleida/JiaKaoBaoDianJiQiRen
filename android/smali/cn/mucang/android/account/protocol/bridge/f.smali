.class public final synthetic Lcn/mucang/android/account/protocol/bridge/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/core/d$a;


# instance fields
.field public final synthetic a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/protocol/bridge/f;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/account/protocol/bridge/f;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
