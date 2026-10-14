.class Lcn/mucang/android/account/third/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/third/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/third/z;->e(Landroid/app/Activity;ILcn/mucang/android/account/data/LoginModel;Lcn/mucang/android/account/third/u;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/third/u;

.field final synthetic b:Lcn/mucang/android/account/data/LoginModel;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcn/mucang/android/account/third/u;Lcn/mucang/android/account/data/LoginModel;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/third/z$a;->a:Lcn/mucang/android/account/third/u;

    iput-object p2, p0, Lcn/mucang/android/account/third/z$a;->b:Lcn/mucang/android/account/data/LoginModel;

    iput-object p3, p0, Lcn/mucang/android/account/third/z$a;->c:Landroid/app/Activity;

    iput p4, p0, Lcn/mucang/android/account/third/z$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/account/data/MCUserInfo;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.mucang.android.account.ACTION_INNER_THIRD_LOGIN_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/account/third/z$a;->a:Lcn/mucang/android/account/third/u;

    invoke-interface {v1}, Lcn/mucang/android/account/third/u;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "third_login_platform"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/w;->e(Landroid/content/Intent;)Z

    .line 4
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/account/third/z$a;->a:Lcn/mucang/android/account/third/u;

    invoke-interface {v0}, Lcn/mucang/android/account/third/u;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/third/z$a;->a:Lcn/mucang/android/account/third/u;

    .line 5
    invoke-interface {v1}, Lcn/mucang/android/account/third/u;->g()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {p1, v0, v1}, Lcn/mucang/android/account/third/z;->a(Lcn/mucang/android/account/data/MCUserInfo;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/account/api/data/ThirdLoginRequest;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcn/mucang/android/account/third/z$a;->b:Lcn/mucang/android/account/data/LoginModel;

    invoke-virtual {v0}, Lcn/mucang/android/account/data/LoginModel;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->setFrom(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/account/third/z$a;->c:Landroid/app/Activity;

    iget v1, p0, Lcn/mucang/android/account/third/z$a;->d:I

    iget-object v2, p0, Lcn/mucang/android/account/third/z$a;->b:Lcn/mucang/android/account/data/LoginModel;

    invoke-static {v0, p1, v1, v2}, Lcn/mucang/android/account/third/z;->b(Landroid/app/Activity;Lcn/mucang/android/account/api/data/ThirdLoginRequest;ILcn/mucang/android/account/data/LoginModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Exception"

    .line 9
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "\u767b\u5f55\u6210\u529f\uff0c\u5904\u7406\u5931\u8d25"

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(ILjava/lang/Throwable;)V
    .locals 1

    const-string v0, "ThirdLoginManager"

    .line 1
    invoke-static {v0, p2}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/third/z$a;->a:Lcn/mucang/android/account/third/u;

    invoke-interface {v0}, Lcn/mucang/android/account/third/u;->c()V

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/16 v0, 0x8

    if-ne v0, p1, :cond_1

    const-string p1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7cfb\u7edf\u8bbe\u7f6e"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
