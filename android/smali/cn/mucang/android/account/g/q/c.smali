.class public Lcn/mucang/android/account/g/q/c;
.super Lcn/mucang/android/core/api/c/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/core/api/c/d<",
        "Landroid/app/Activity;",
        "Lcn/mucang/android/account/api/data/CheckSmsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field b:Lcn/mucang/android/account/h/b;

.field private c:Lcn/mucang/android/account/g/g;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/h/b;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/core/api/c/d;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p2, Lcn/mucang/android/account/g/g;

    invoke-direct {p2}, Lcn/mucang/android/account/g/g;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/account/g/q/c;->c:Lcn/mucang/android/account/g/g;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/account/g/q/c;->d:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcn/mucang/android/account/g/q/c;->e:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcn/mucang/android/account/g/q/c;->f:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcn/mucang/android/account/g/q/c;->g:Ljava/lang/String;

    .line 7
    iput p7, p0, Lcn/mucang/android/account/g/q/c;->h:I

    .line 8
    iput-object p1, p0, Lcn/mucang/android/account/g/q/c;->b:Lcn/mucang/android/account/h/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/api/c/d;->a()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/g/q/c;->b:Lcn/mucang/android/account/h/b;

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

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/g/q/c;->f(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/g/q/c;->b:Lcn/mucang/android/account/h/b;

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
    new-instance v0, Lcn/mucang/android/account/g/q/c$a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/account/g/q/c$a;-><init>(Lcn/mucang/android/account/g/q/c;Lcn/mucang/android/core/api/exception/ApiException;)V

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
    iget-object p1, p0, Lcn/mucang/android/account/g/q/c;->b:Lcn/mucang/android/account/h/b;

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
    iget-object v0, p0, Lcn/mucang/android/account/g/q/c;->b:Lcn/mucang/android/account/h/b;

    invoke-virtual {v0}, Lcn/mucang/android/account/h/b;->C()Lcn/mucang/android/account/h/e$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/g/q/c;->b:Lcn/mucang/android/account/h/b;

    invoke-virtual {v0}, Lcn/mucang/android/account/h/b;->C()Lcn/mucang/android/account/h/e$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/mucang/android/account/h/e$b;->a(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/account/g/q/c;->b:Lcn/mucang/android/account/h/b;

    invoke-virtual {p1}, Lcn/mucang/android/account/h/d;->t()V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/account/g/q/c;->b:Lcn/mucang/android/account/h/b;

    invoke-virtual {p1}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method public g()Lcn/mucang/android/account/api/data/CheckSmsResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/g/q/c;->c:Lcn/mucang/android/account/g/g;

    iget-object v1, p0, Lcn/mucang/android/account/g/q/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/g/q/c;->e:Ljava/lang/String;

    sget-object v3, Lcn/mucang/android/account/api/data/CheckType;->FALSE:Lcn/mucang/android/account/api/data/CheckType;

    iget-object v4, p0, Lcn/mucang/android/account/g/q/c;->f:Ljava/lang/String;

    iget-object v5, p0, Lcn/mucang/android/account/g/q/c;->g:Ljava/lang/String;

    iget v6, p0, Lcn/mucang/android/account/g/q/c;->h:I

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/account/g/g;->f(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/account/api/data/CheckType;Ljava/lang/String;Ljava/lang/String;I)Lcn/mucang/android/account/api/data/CheckSmsResponse;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/g/q/c;->g()Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object v0

    return-object v0
.end method
