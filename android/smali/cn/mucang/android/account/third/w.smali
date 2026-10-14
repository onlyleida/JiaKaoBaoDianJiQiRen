.class public Lcn/mucang/android/account/third/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/third/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "qq"

    return-object v0
.end method

.method public b(Landroid/app/Activity;Lcn/mucang/android/account/third/s;)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/i;->c()Lcn/mucang/android/core/utils/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/mucang/android/core/utils/i;->f(Ljava/lang/Object;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/account/third/w;->g()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcn/mucang/android/account/third/QQLoginAssistActivity;->k(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/third/w;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6b63\u5728\u4f7f\u7528QQ\u767b\u5f55"

    return-object v0
.end method

.method public synthetic e()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcn/mucang/android/account/third/t;->a(Lcn/mucang/android/account/third/u;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "qq-space"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    const-string v0, "qq_share_appKey"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/o0;->n(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQ"

    return-object v0
.end method
