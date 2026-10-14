.class Lcn/mucang/android/account/k/b$f;
.super Lcn/mucang/android/core/api/c/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/core/api/c/d<",
        "Landroid/app/Activity;",
        "Lcn/mucang/android/account/api/data/PopupCaptchaResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcn/mucang/android/account/g/k;

.field private c:Lcn/mucang/android/account/k/b;

.field private d:Lcn/mucang/android/account/ui/a;


# direct methods
.method private constructor <init>(Lcn/mucang/android/account/k/b;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcn/mucang/android/core/api/c/d;-><init>(Ljava/lang/Object;)V

    .line 3
    new-instance p3, Lcn/mucang/android/account/g/k;

    invoke-direct {p3}, Lcn/mucang/android/account/g/k;-><init>()V

    iput-object p3, p0, Lcn/mucang/android/account/k/b$f;->b:Lcn/mucang/android/account/g/k;

    .line 4
    iput-object p1, p0, Lcn/mucang/android/account/k/b$f;->c:Lcn/mucang/android/account/k/b;

    .line 5
    new-instance p1, Lcn/mucang/android/account/ui/a;

    invoke-direct {p1, p2}, Lcn/mucang/android/account/ui/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/mucang/android/account/k/b$f;->d:Lcn/mucang/android/account/ui/a;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/account/k/b;Landroid/app/Activity;Ljava/lang/String;Lcn/mucang/android/account/k/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/account/k/b$f;-><init>(Lcn/mucang/android/account/k/b;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/api/c/d;->a()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/k/b$f;->d:Lcn/mucang/android/account/ui/a;

    const-string v1, "\u6b63\u5728\u8bf7\u6c42\u9a8c\u8bc1\u7801..."

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/ui/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/k/b$f;->f(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/api/c/d;->c(Ljava/lang/Exception;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/k/b$f;->d:Lcn/mucang/android/account/ui/a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    .line 5
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method public f(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/b$f;->d:Lcn/mucang/android/account/ui/a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    if-nez p1, :cond_0

    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/k/b$f;->c:Lcn/mucang/android/account/k/b;

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/k/b;->v(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)V

    return-void
.end method

.method public g()Lcn/mucang/android/account/api/data/PopupCaptchaResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/b$f;->b:Lcn/mucang/android/account/g/k;

    invoke-virtual {v0}, Lcn/mucang/android/account/g/k;->h()Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/k/b$f;->g()Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    move-result-object v0

    return-object v0
.end method
