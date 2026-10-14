.class Lcn/mucang/android/account/k/c$c;
.super Lcn/mucang/android/core/api/c/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/core/api/c/d<",
        "Landroid/app/Activity;",
        "Lcn/mucang/android/account/api/data/CheckSmsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcn/mucang/android/account/g/k;

.field private c:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcn/mucang/android/account/h/d;

.field private h:Lcn/mucang/android/account/k/c;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/k/c;Lcn/mucang/android/account/h/d;Landroid/app/Activity;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcn/mucang/android/core/api/c/d;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p3, Lcn/mucang/android/account/g/k;

    invoke-direct {p3}, Lcn/mucang/android/account/g/k;-><init>()V

    iput-object p3, p0, Lcn/mucang/android/account/k/c$c;->b:Lcn/mucang/android/account/g/k;

    .line 3
    iput-object p4, p0, Lcn/mucang/android/account/k/c$c;->c:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    .line 4
    iput-object p5, p0, Lcn/mucang/android/account/k/c$c;->d:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcn/mucang/android/account/k/c$c;->e:Ljava/lang/String;

    .line 6
    iput-boolean p7, p0, Lcn/mucang/android/account/k/c$c;->f:Z

    .line 7
    iput-object p2, p0, Lcn/mucang/android/account/k/c$c;->g:Lcn/mucang/android/account/h/d;

    .line 8
    iput-object p1, p0, Lcn/mucang/android/account/k/c$c;->h:Lcn/mucang/android/account/k/c;

    return-void
.end method

.method static synthetic f(Lcn/mucang/android/account/k/c$c;)Lcn/mucang/android/account/h/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/k/c$c;->g:Lcn/mucang/android/account/h/d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/api/c/d;->a()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/k/c$c;->g:Lcn/mucang/android/account/h/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/account/h/d;->w()Lcn/mucang/android/account/ui/a;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8bf7\u6c42\u9a8c\u8bc1\u7801..."

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/ui/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/api/data/CheckSmsResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/k/c$c;->g(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/c$c;->g:Lcn/mucang/android/account/h/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/account/h/d;->t()V

    .line 3
    instance-of v0, p1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcn/mucang/android/core/api/exception/ApiException;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x4e2b

    if-ne v0, v1, :cond_0

    .line 6
    new-instance v0, Lcn/mucang/android/account/k/c$c$a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/account/k/c$c$a;-><init>(Lcn/mucang/android/account/k/c$c;Lcn/mucang/android/core/api/exception/ApiException;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public g(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/c$c;->h:Lcn/mucang/android/account/k/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/account/k/c;->A(Lcn/mucang/android/account/k/c;J)J

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/k/c$c;->g:Lcn/mucang/android/account/h/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/account/h/d;->t()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/account/k/c$c;->g:Lcn/mucang/android/account/h/d;

    invoke-virtual {v0}, Lf/a/a/a/n/d/f;->dismiss()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/k/c$c;->h:Lcn/mucang/android/account/k/c;

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/k/b;->u(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/account/k/c$c;->h:Lcn/mucang/android/account/k/c;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lcn/mucang/android/account/k/c;->B(Lcn/mucang/android/account/k/c;Landroid/app/Activity;)V

    return-void
.end method

.method public h()Lcn/mucang/android/account/api/data/CheckSmsResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/c$c;->c:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/CaptchaResponse;->getCaptchaId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/account/k/c$c;->d:Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v1, p0, Lcn/mucang/android/account/k/c$c;->d:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object v2, p0, Lcn/mucang/android/account/k/c$c;->b:Lcn/mucang/android/account/g/k;

    iget-object v3, p0, Lcn/mucang/android/account/k/c$c;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lcn/mucang/android/account/k/c$c;->f:Z

    invoke-virtual {v2, v3, v0, v1, v4}, Lcn/mucang/android/account/g/k;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/k/c$c;->h()Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object v0

    return-object v0
.end method
