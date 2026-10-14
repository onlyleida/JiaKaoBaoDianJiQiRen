.class public final synthetic Lcn/mucang/android/core/webview/protocol/bridge/http/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/request/c$a;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/api/request/c;

.field public final synthetic b:Lcn/mucang/android/core/webview/protocol/bridge/http/h;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/api/request/c;Lcn/mucang/android/core/webview/protocol/bridge/http/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/b;->a:Lcn/mucang/android/core/api/request/c;

    iput-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/b;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/h;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/b;->a:Lcn/mucang/android/core/api/request/c;

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/b;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/h;

    invoke-static {v0, v1}, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->g(Lcn/mucang/android/core/api/request/c;Lcn/mucang/android/core/webview/protocol/bridge/http/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
