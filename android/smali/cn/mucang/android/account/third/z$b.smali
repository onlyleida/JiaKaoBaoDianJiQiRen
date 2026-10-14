.class Lcn/mucang/android/account/third/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/third/z;->c(Landroid/app/Activity;Lcn/mucang/android/account/api/data/ThirdLoginRequest;ILcn/mucang/android/account/data/LoginModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/api/data/ThirdLoginRequest;

.field final synthetic b:Lcn/mucang/android/account/data/LoginModel;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcn/mucang/android/account/api/data/ThirdLoginRequest;Lcn/mucang/android/account/data/LoginModel;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/third/z$b;->a:Lcn/mucang/android/account/api/data/ThirdLoginRequest;

    iput-object p2, p0, Lcn/mucang/android/account/third/z$b;->b:Lcn/mucang/android/account/data/LoginModel;

    iput-object p3, p0, Lcn/mucang/android/account/third/z$b;->c:Landroid/app/Activity;

    iput p4, p0, Lcn/mucang/android/account/third/z$b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/account/g/n;

    invoke-direct {v0}, Lcn/mucang/android/account/g/n;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/account/third/z$b;->a:Lcn/mucang/android/account/api/data/ThirdLoginRequest;

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/g/n;->g(Lcn/mucang/android/account/api/data/ThirdLoginRequest;)Lcn/mucang/android/account/api/data/ThirdLoginResponse;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/ThirdLoginResponse;->isBind()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "hadeslee"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "\u7b2c\u4e09\u65b9\u6570\u636e\u5df2\u7ed1\u5b9a\uff0c\u767b\u5f55\u6210\u529f"

    .line 3
    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Lcn/mucang/android/account/third/z$b$a;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/account/third/z$b$a;-><init>(Lcn/mucang/android/account/third/z$b;Lcn/mucang/android/account/api/data/ThirdLoginResponse;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "\u7b2c\u4e09\u65b9\u6570\u636e\u672a\u7ed1\u5b9a\uff0c\u5f00\u59cb\u7ed1\u5b9a"

    .line 5
    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Lcn/mucang/android/account/api/data/CheckSmsResponse;

    invoke-direct {v0}, Lcn/mucang/android/account/api/data/CheckSmsResponse;-><init>()V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/account/third/z$b;->b:Lcn/mucang/android/account/data/LoginModel;

    invoke-virtual {v1}, Lcn/mucang/android/account/data/LoginModel;->getCheckType()Lcn/mucang/android/account/api/data/CheckType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcn/mucang/android/account/third/z$b;->b:Lcn/mucang/android/account/data/LoginModel;

    invoke-virtual {v1}, Lcn/mucang/android/account/data/LoginModel;->getCheckType()Lcn/mucang/android/account/api/data/CheckType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->setCheckType(Lcn/mucang/android/account/api/data/CheckType;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v1, Lcn/mucang/android/account/api/data/CheckType;->TRUE:Lcn/mucang/android/account/api/data/CheckType;

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->setCheckType(Lcn/mucang/android/account/api/data/CheckType;)V

    .line 10
    :goto_0
    new-instance v1, Lcn/mucang/android/account/activity/ValidationActivity$a;

    iget-object v2, p0, Lcn/mucang/android/account/third/z$b;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcn/mucang/android/account/activity/ValidationActivity$a;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    .line 11
    invoke-virtual {v1, v2}, Lcn/mucang/android/account/activity/ValidationActivity$a;->d(I)Lcn/mucang/android/account/activity/ValidationActivity$a;

    .line 12
    invoke-virtual {v1, v0}, Lcn/mucang/android/account/activity/ValidationActivity$a;->b(Lcn/mucang/android/account/api/data/CheckSmsResponse;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    const-string v0, "\u7ed1\u5b9a\u624b\u673a"

    .line 13
    invoke-virtual {v1, v0}, Lcn/mucang/android/account/activity/ValidationActivity$a;->f(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    .line 14
    invoke-virtual {v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "__key_extra_model__"

    .line 15
    iget-object v2, p0, Lcn/mucang/android/account/third/z$b;->b:Lcn/mucang/android/account/data/LoginModel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "__open_id__"

    .line 16
    iget-object v2, p0, Lcn/mucang/android/account/third/z$b;->a:Lcn/mucang/android/account/api/data/ThirdLoginRequest;

    invoke-virtual {v2}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "__union_id__"

    .line 17
    iget-object v2, p0, Lcn/mucang/android/account/third/z$b;->a:Lcn/mucang/android/account/api/data/ThirdLoginRequest;

    invoke-virtual {v2}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getUnionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "__third_party__"

    .line 18
    iget-object v2, p0, Lcn/mucang/android/account/third/z$b;->a:Lcn/mucang/android/account/api/data/ThirdLoginRequest;

    invoke-virtual {v2}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getThirdParty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    iget-object v1, p0, Lcn/mucang/android/account/third/z$b;->c:Landroid/app/Activity;

    iget v2, p0, Lcn/mucang/android/account/third/z$b;->d:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Exception"

    .line 20
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5411\u670d\u52a1\u5668\u6ce8\u518c\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
