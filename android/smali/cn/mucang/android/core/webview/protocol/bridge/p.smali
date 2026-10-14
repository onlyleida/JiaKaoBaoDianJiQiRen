.class public final synthetic Lcn/mucang/android/core/webview/protocol/bridge/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/io/File;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->a:Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;

    iput-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->f:Ljava/io/File;

    iput-object p7, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->g:Ljava/lang/String;

    iput-object p8, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->a:Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->e:Ljava/lang/String;

    iget-object v5, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->f:Ljava/io/File;

    iget-object v6, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->g:Ljava/lang/String;

    iget-object v7, p0, Lcn/mucang/android/core/webview/protocol/bridge/p;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
