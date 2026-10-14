.class final Lcn/mucang/android/core/webview/client/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/client/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static a:Lcn/mucang/android/core/webview/client/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/client/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/core/webview/client/g;-><init>(Lcn/mucang/android/core/webview/client/g$a;)V

    sput-object v0, Lcn/mucang/android/core/webview/client/g$b;->a:Lcn/mucang/android/core/webview/client/g;

    return-void
.end method

.method static synthetic a()Lcn/mucang/android/core/webview/client/g;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/webview/client/g$b;->a:Lcn/mucang/android/core/webview/client/g;

    return-object v0
.end method
