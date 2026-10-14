.class public final synthetic Lcn/mucang/android/core/webview/protocol/bridge/http/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/request/c$a;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/webview/protocol/bridge/http/m;

.field public final synthetic b:Lcn/mucang/android/core/api/request/c;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/http/m;Lcn/mucang/android/core/api/request/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/e;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/m;

    iput-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/e;->b:Lcn/mucang/android/core/api/request/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/e;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/m;

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/e;->b:Lcn/mucang/android/core/api/request/c;

    invoke-static {v0, v1}, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->f(Lcn/mucang/android/core/webview/protocol/bridge/http/m;Lcn/mucang/android/core/api/request/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
