.class Lcn/mucang/android/account/h/d$c;
.super Lcn/mucang/android/core/api/c/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/core/api/c/d<",
        "Landroid/app/Activity;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcn/mucang/android/account/g/l;

.field private c:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

.field private d:Ljava/lang/String;

.field e:Lcn/mucang/android/account/h/d;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/h/d;Landroid/app/Activity;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/core/api/c/d;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p2, Lcn/mucang/android/account/g/l;

    invoke-direct {p2}, Lcn/mucang/android/account/g/l;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/account/h/d$c;->b:Lcn/mucang/android/account/g/l;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/account/h/d$c;->c:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    .line 4
    iput-object p4, p0, Lcn/mucang/android/account/h/d$c;->d:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcn/mucang/android/account/h/d$c;->e:Lcn/mucang/android/account/h/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/api/c/d;->a()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/h/d$c;->e:Lcn/mucang/android/account/h/d;

    invoke-virtual {v0}, Lcn/mucang/android/account/h/d;->w()Lcn/mucang/android/account/ui/a;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u9a8c\u8bc1..."

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/ui/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/h/d$c;->f(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/h/d$c;->e:Lcn/mucang/android/account/h/d;

    invoke-virtual {v0}, Lcn/mucang/android/account/h/d;->t()V

    .line 2
    instance-of v0, p1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcn/mucang/android/core/api/exception/ApiException;

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x4e2b

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lcn/mucang/android/account/h/d$c$a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/account/h/d$c$a;-><init>(Lcn/mucang/android/account/h/d$c;Lcn/mucang/android/core/api/exception/ApiException;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/account/h/d$c;->e:Lcn/mucang/android/account/h/d;

    invoke-virtual {p1}, Lcn/mucang/android/account/h/d;->t()V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/account/h/d$c;->e:Lcn/mucang/android/account/h/d;

    invoke-virtual {p1}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/h/d$c;->b:Lcn/mucang/android/account/g/l;

    iget-object v1, p0, Lcn/mucang/android/account/h/d$c;->c:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    iget-object v2, p0, Lcn/mucang/android/account/h/d$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/account/g/l;->f(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/h/d$c;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
