.class Lcn/mucang/android/account/h/e$c;
.super Lcn/mucang/android/core/api/c/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/h/e;
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
.field b:Lcn/mucang/android/account/h/e;

.field private c:Lcn/mucang/android/account/g/k;

.field private d:Ljava/lang/String;

.field private e:Lcn/mucang/android/account/api/data/CaptchaResponse;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method private constructor <init>(Lcn/mucang/android/account/h/e;Landroid/app/Activity;Lcn/mucang/android/account/api/data/CaptchaResponse;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcn/mucang/android/core/api/c/d;-><init>(Ljava/lang/Object;)V

    .line 3
    new-instance p2, Lcn/mucang/android/account/g/k;

    invoke-direct {p2}, Lcn/mucang/android/account/g/k;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/account/h/e$c;->c:Lcn/mucang/android/account/g/k;

    .line 4
    iput-object p1, p0, Lcn/mucang/android/account/h/e$c;->b:Lcn/mucang/android/account/h/e;

    .line 5
    iput-object p3, p0, Lcn/mucang/android/account/h/e$c;->e:Lcn/mucang/android/account/api/data/CaptchaResponse;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/account/h/e$c;->d:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcn/mucang/android/account/h/e$c;->f:Ljava/lang/String;

    .line 8
    iput-boolean p6, p0, Lcn/mucang/android/account/h/e$c;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/account/h/e;Landroid/app/Activity;Lcn/mucang/android/account/api/data/CaptchaResponse;Ljava/lang/String;Ljava/lang/String;ZLcn/mucang/android/account/h/e$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcn/mucang/android/account/h/e$c;-><init>(Lcn/mucang/android/account/h/e;Landroid/app/Activity;Lcn/mucang/android/account/api/data/CaptchaResponse;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/api/c/d;->a()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/h/e$c;->b:Lcn/mucang/android/account/h/e;

    invoke-virtual {v0}, Lcn/mucang/android/account/h/d;->w()Lcn/mucang/android/account/ui/a;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u9a8c\u8bc1..."

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/ui/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/api/data/CheckSmsResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/h/e$c;->f(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/h/e$c;->b:Lcn/mucang/android/account/h/e;

    invoke-virtual {v0}, Lcn/mucang/android/account/h/d;->t()V

    .line 2
    instance-of v0, p1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcn/mucang/android/core/api/exception/ApiException;

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x4e2b

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lcn/mucang/android/account/h/e$c$a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/account/h/e$c$a;-><init>(Lcn/mucang/android/account/h/e$c;Lcn/mucang/android/core/api/exception/ApiException;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/account/h/e$c;->b:Lcn/mucang/android/account/h/e;

    invoke-virtual {p1}, Lf/a/a/a/n/d/f;->dismiss()V

    goto :goto_0

    :cond_1
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    .line 8
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public f(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/h/e$c;->b:Lcn/mucang/android/account/h/e;

    invoke-static {v0}, Lcn/mucang/android/account/h/e;->C(Lcn/mucang/android/account/h/e;)Lcn/mucang/android/account/h/e$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/h/e$c;->b:Lcn/mucang/android/account/h/e;

    invoke-static {v0}, Lcn/mucang/android/account/h/e;->C(Lcn/mucang/android/account/h/e;)Lcn/mucang/android/account/h/e$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/mucang/android/account/h/e$b;->a(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/account/h/e$c;->b:Lcn/mucang/android/account/h/e;

    invoke-virtual {p1}, Lcn/mucang/android/account/h/d;->t()V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/account/h/e$c;->b:Lcn/mucang/android/account/h/e;

    invoke-virtual {p1}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method public g()Lcn/mucang/android/account/api/data/CheckSmsResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/h/e$c;->c:Lcn/mucang/android/account/g/k;

    iget-object v1, p0, Lcn/mucang/android/account/h/e$c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/h/e$c;->e:Lcn/mucang/android/account/api/data/CaptchaResponse;

    invoke-virtual {v2}, Lcn/mucang/android/account/api/data/CaptchaResponse;->getCaptchaId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/account/h/e$c;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcn/mucang/android/account/h/e$c;->g:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/account/g/k;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcn/mucang/android/account/api/data/CheckSmsResponse;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/h/e$c;->g()Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object v0

    return-object v0
.end method
