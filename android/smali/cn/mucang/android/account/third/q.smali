.class public abstract Lcn/mucang/android/account/third/q;
.super Lf/a/a/d/b;
.source "SourceFile"


# instance fields
.field protected c:Lcn/mucang/android/account/third/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/b;-><init>()V

    return-void
.end method

.method protected static g(Landroid/content/Context;Ljava/lang/Class;JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/account/third/q;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string p1, "BaseAssistActivity.listenerId"

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "BaseAssistActivity.appId"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/third/q;->c:Lcn/mucang/android/account/third/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcn/mucang/android/account/third/s;->b(ILjava/lang/Throwable;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    const-string v2, "BaseAssistActivity.listenerId"

    .line 1
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/utils/i;->c()Lcn/mucang/android/core/utils/i;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/core/utils/i;->d(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/account/third/s;

    iput-object p1, p0, Lcn/mucang/android/account/third/q;->c:Lcn/mucang/android/account/third/s;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/third/q;->c:Lcn/mucang/android/account/third/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/mucang/android/account/third/s;->onCancel()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected e(Lcn/mucang/android/account/data/MCUserInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/third/q;->c:Lcn/mucang/android/account/third/s;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Lcn/mucang/android/account/third/s;->a(Lcn/mucang/android/account/data/MCUserInfo;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcn/mucang/android/account/data/MCUserInfo;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcn/mucang/android/account/data/MCUserInfo;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/third/q;->e(Lcn/mucang/android/account/data/MCUserInfo;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
