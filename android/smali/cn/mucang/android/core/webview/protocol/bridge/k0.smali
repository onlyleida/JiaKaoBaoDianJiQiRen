.class public abstract Lcn/mucang/android/core/webview/protocol/bridge/k0;
.super Lcn/mucang/android/core/webview/protocol/bridge/j0;
.source "SourceFile"


# static fields
.field public static final KEY_CALLBACK_NAME:Ljava/lang/String; = "callbackName"


# instance fields
.field protected bridge:Lcn/mucang/android/core/webview/core/d;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/j0;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/protocol/bridge/k0;->addFunction()V

    return-void
.end method


# virtual methods
.method protected abstract addFunction()V
.end method
