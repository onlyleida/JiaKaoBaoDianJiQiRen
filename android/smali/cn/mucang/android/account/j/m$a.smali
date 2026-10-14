.class Lcn/mucang/android/account/j/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/TokenResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/j/m;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenFailed(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/account/j/m;->b(Z)Z

    return-void
.end method

.method public onTokenSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->fromJson(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "600024"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Lcn/mucang/android/account/j/m;->b(Z)Z

    .line 4
    invoke-static {}, Lcn/mucang/android/account/j/m;->a()V

    :cond_0
    return-void
.end method
