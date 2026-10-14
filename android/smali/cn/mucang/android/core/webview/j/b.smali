.class public Lcn/mucang/android/core/webview/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/android/core/webview/j/b;->b:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/webview/j/b;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 4
    iput-object p2, p0, Lcn/mucang/android/core/webview/j/b;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method
