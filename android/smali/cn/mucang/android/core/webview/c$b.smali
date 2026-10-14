.class Lcn/mucang/android/core/webview/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:Lcn/mucang/android/core/webview/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/core/webview/c;-><init>(Lcn/mucang/android/core/webview/c$a;)V

    sput-object v0, Lcn/mucang/android/core/webview/c$b;->a:Lcn/mucang/android/core/webview/c;

    return-void
.end method

.method static synthetic a()Lcn/mucang/android/core/webview/c;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/webview/c$b;->a:Lcn/mucang/android/core/webview/c;

    return-object v0
.end method
