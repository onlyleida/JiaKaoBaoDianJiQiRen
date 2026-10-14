.class public Lcn/mucang/android/account/third/a0;
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

    const-string v0, "\u5fae\u4fe1"

    return-object v0
.end method

.method public b(Landroid/app/Activity;Lcn/mucang/android/account/third/s;)V
    .locals 2

    const-string v0, "com.tencent.mm"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/o0;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\u672a\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef\uff01\uff01"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/utils/i;->c()Lcn/mucang/android/core/utils/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/mucang/android/core/utils/i;->f(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/account/third/a0;->g()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcn/mucang/android/account/third/WXLoginAssistActivity;->i(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/android/account/third/a0;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->unregisterApp()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6b63\u5728\u4f7f\u7528\u5fae\u4fe1\u767b\u5f55"

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

    const-string v0, "weixin"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    const-string v0, "wechat_share_appKey"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/o0;->n(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5fae\u4fe1"

    return-object v0
.end method
