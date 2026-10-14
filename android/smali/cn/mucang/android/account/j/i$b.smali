.class public final Lcn/mucang/android/account/j/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/TokenResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/j/i;->l(Ljava/lang/String;Lcn/mucang/android/account/j/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/android/account/one_key_login/NumberAuthUtils$numberAuth$tokenResultListener$1",
        "Lcom/mobile/auth/gatewayauth/TokenResultListener;",
        "onTokenFailed",
        "",
        "s",
        "",
        "onTokenSuccess",
        "account_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/mucang/android/account/j/h;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/mucang/android/account/j/h;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/account/j/i$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/account/j/i$b;->b:Lcn/mucang/android/account/j/h;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenFailed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u83b7\u53d6token\u5931\u8d25\uff1a"

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "number_auth"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcn/mucang/android/account/j/i$b;->b:Lcn/mucang/android/account/j/h;

    const-string v0, "\u83b7\u53d6token\u5931\u8d25"

    invoke-interface {p1, v0}, Lcn/mucang/android/account/j/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onTokenSuccess(Ljava/lang/String;)V
    .locals 3

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->fromJson(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object p1

    const-string v0, "600000"

    .line 2
    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/android/account/j/i;->a:Lcn/mucang/android/account/j/i;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getToken()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/android/account/j/i$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/j/i$b;->b:Lcn/mucang/android/account/j/h;

    invoke-static {v0, p1, v1, v2}, Lcn/mucang/android/account/j/i;->b(Lcn/mucang/android/account/j/i;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/account/j/h;)V

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/account/j/i;->a()Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->setAuthListener(Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/account/j/i$b;->b:Lcn/mucang/android/account/j/h;

    const-string v0, "ERROR"

    invoke-interface {p1, v0}, Lcn/mucang/android/account/j/h;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
