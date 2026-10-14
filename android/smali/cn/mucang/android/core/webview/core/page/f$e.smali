.class Lcn/mucang/android/core/webview/core/page/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/widget/datepick/a$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/core/page/f;->s(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/core/page/f;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/page/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/f$e;->a:Lcn/mucang/android/core/webview/core/page/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Date;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f$e;->a:Lcn/mucang/android/core/webview/core/page/f;

    new-instance v1, Lcn/mucang/android/core/webview/core/page/h;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-direct {v1, v2, p1}, Lcn/mucang/android/core/webview/core/page/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/page/f;->c(Lcn/mucang/android/core/webview/core/page/h;)V

    return-void
.end method
