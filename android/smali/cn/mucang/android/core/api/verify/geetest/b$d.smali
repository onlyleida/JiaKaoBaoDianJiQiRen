.class public Lcn/mucang/android/core/api/verify/geetest/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/verify/geetest/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/verify/geetest/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/api/verify/geetest/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$d;->a:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gtCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$d;->a:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-virtual {p1}, Lcn/mucang/android/core/api/verify/geetest/b;->dismiss()V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$d;->a:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$d;->a:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object p1

    invoke-interface {p1, p3, p2}, Lcn/mucang/android/core/api/verify/geetest/b$b;->d(ZLjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$d;->a:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$d;->a:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p1, p3, p2}, Lcn/mucang/android/core/api/verify/geetest/b$b;->d(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Exception"

    .line 7
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public gtCloseWindow()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$d;->a:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-virtual {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->dismiss()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$d;->a:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$d;->a:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/core/api/verify/geetest/b$b;->b()V

    :cond_0
    return-void
.end method

.method public gtReady()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$d;->a:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->a(Lcn/mucang/android/core/api/verify/geetest/b;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/mucang/android/core/api/verify/geetest/b$d$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/api/verify/geetest/b$d$a;-><init>(Lcn/mucang/android/core/api/verify/geetest/b$d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$d;->a:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$d;->a:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcn/mucang/android/core/api/verify/geetest/b$b;->c(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
