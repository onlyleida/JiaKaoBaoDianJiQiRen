.class Lcn/mucang/android/account/k/b$g;
.super Lcn/mucang/android/core/api/c/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/core/api/c/d<",
        "Landroid/app/Activity;",
        "Lcn/mucang/android/account/api/data/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcn/mucang/android/account/g/k;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcn/mucang/android/account/ui/a;

.field g:Lcn/mucang/android/account/k/b;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/k/b;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/core/api/c/d;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/android/account/g/k;

    invoke-direct {v0}, Lcn/mucang/android/account/g/k;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/account/k/b$g;->b:Lcn/mucang/android/account/g/k;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/account/k/b$g;->c:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcn/mucang/android/account/k/b$g;->d:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcn/mucang/android/account/k/b$g;->e:Ljava/lang/String;

    .line 6
    new-instance p3, Lcn/mucang/android/account/ui/a;

    invoke-direct {p3, p2}, Lcn/mucang/android/account/ui/a;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcn/mucang/android/account/k/b$g;->f:Lcn/mucang/android/account/ui/a;

    .line 7
    iput-object p1, p0, Lcn/mucang/android/account/k/b$g;->g:Lcn/mucang/android/account/k/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/api/c/d;->a()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/k/b$g;->f:Lcn/mucang/android/account/ui/a;

    const-string v1, "\u6b63\u5728\u8bf7\u6c42\u767b\u5f55..."

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/ui/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/api/data/b;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/k/b$g;->f(Lcn/mucang/android/account/api/data/b;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/api/c/d;->c(Ljava/lang/Exception;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/k/b$g;->f:Lcn/mucang/android/account/ui/a;

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

.method public f(Lcn/mucang/android/account/api/data/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/b$g;->f:Lcn/mucang/android/account/ui/a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    .line 2
    iget-object v0, p1, Lcn/mucang/android/account/api/data/b;->a:Lcn/mucang/android/account/api/data/UserInfoResponse;

    iget-object v1, p0, Lcn/mucang/android/account/k/b$g;->g:Lcn/mucang/android/account/k/b;

    invoke-static {v1}, Lcn/mucang/android/account/k/b;->k(Lcn/mucang/android/account/k/b;)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/account/f;->e(Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/data/AccountBaseModel;)V

    const-string v0, "\u624b\u673a\u53f7\u77ed\u4fe1\u767b\u5f55\u9875-\u767b\u5f55\u6210\u529f"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/account/k/b$g;->g:Lcn/mucang/android/account/k/b;

    invoke-static {v0}, Lcn/mucang/android/account/k/b;->l(Lcn/mucang/android/account/k/b;)Lcn/mucang/android/account/k/b$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/android/account/k/b$g;->g:Lcn/mucang/android/account/k/b;

    invoke-static {v0}, Lcn/mucang/android/account/k/b;->l(Lcn/mucang/android/account/k/b;)Lcn/mucang/android/account/k/b$e;

    move-result-object v0

    iget-object v1, p1, Lcn/mucang/android/account/api/data/b;->a:Lcn/mucang/android/account/api/data/UserInfoResponse;

    iget-object v2, p0, Lcn/mucang/android/account/k/b$g;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcn/mucang/android/account/k/b$e;->a(Lcn/mucang/android/account/api/data/UserInfoResponse;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcn/mucang/android/account/k/b$g;->g:Lcn/mucang/android/account/k/b;

    invoke-static {v1}, Lcn/mucang/android/account/k/b;->k(Lcn/mucang/android/account/k/b;)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/mucang/android/account/f;->d(Landroid/content/Context;Lcn/mucang/android/account/data/AccountBaseModel;Lcn/mucang/android/account/api/data/b;)V

    return-void
.end method

.method public g()Lcn/mucang/android/account/api/data/b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/b$g;->b:Lcn/mucang/android/account/g/k;

    iget-object v1, p0, Lcn/mucang/android/account/k/b$g;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/k/b$g;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/account/k/b$g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/account/g/k;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/account/api/data/UserInfoResponse;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/account/f;->a(Lcn/mucang/android/account/api/data/UserInfoResponse;)Lcn/mucang/android/account/api/data/b;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/k/b$g;->g()Lcn/mucang/android/account/api/data/b;

    move-result-object v0

    return-object v0
.end method
