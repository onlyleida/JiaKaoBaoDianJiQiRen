.class public Lcn/mucang/android/account/third/WXLoginAssistActivity;
.super Lcn/mucang/android/account/third/q;
.source "SourceFile"


# instance fields
.field private d:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/third/q;-><init>()V

    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;-><init>()V

    const-string v1, "snsapi_userinfo"

    .line 2
    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    const-string v1, "wechat_sdk_demo_test"

    .line 3
    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 4
    iget-wide v1, p0, Lf/a/a/d/b;->a:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->transaction:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/account/third/WXLoginAssistActivity;->d:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static i(Landroid/content/Context;JLjava/lang/String;)V
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/account/third/WXLoginAssistActivity;

    invoke-static {p0, v0, p1, p2, p3}, Lcn/mucang/android/account/third/q;->g(Landroid/content/Context;Ljava/lang/Class;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/third/q;->b(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lf/a/a/d/b;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/account/third/WXLoginAssistActivity;->d:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 3
    iget-object v0, p0, Lf/a/a/d/b;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/third/WXLoginAssistActivity;->h()V

    return-void
.end method

.method protected c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/third/WXLoginAssistActivity;->d:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->detach()V

    :cond_0
    return-void
.end method
