.class public Lcn/mucang/jiakaoyi/uilib/model/e;
.super Landroidx/lifecycle/j0;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/j0;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/e;->a:Landroidx/lifecycle/z;

    return-void
.end method

.method private synthetic a(ZLcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/e;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/e;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/i/e;->n()Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5230\u6700\u65b0\u7684\u8bbe\u5907\u4fe1\u606f\u6570\u636e\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/s/g;->a:Lcn/mucang/jiakaoyi/uilib/s/g;

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/s/g;->d(Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/e;->a:Landroidx/lifecycle/z;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_2

    .line 6
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/s/g;->a:Lcn/mucang/jiakaoyi/uilib/s/g;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/s/g;->a()Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/e;->a:Landroidx/lifecycle/z;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u8003\u573a\u914d\u7f6e\u5931\u8d25 \u4f7f\u7528\u7f13\u5b58\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string p1, "\u914d\u7f6e\u6570\u636e\u83b7\u53d6\u5931\u8d25"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->j(Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_3
    :goto_1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/model/a;-><init>(Lcn/mucang/jiakaoyi/uilib/model/e;Z)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    .line 11
    :goto_2
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/model/b;

    invoke-direct {p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/b;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic c(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/model/e;->j(Z)V

    return-void
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic f(ZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/model/e;->i(Z)V

    return-void
.end method

.method private j(Z)V
    .locals 11

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    new-instance v10, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    new-instance v8, Lcn/mucang/jiakaoyi/uilib/model/c;

    invoke-direct {v8, p0, p1}, Lcn/mucang/jiakaoyi/uilib/model/c;-><init>(Lcn/mucang/jiakaoyi/uilib/model/e;Z)V

    const-string v3, "\u63d0\u793a"

    const-string v4, "\u83b7\u53d6\u914d\u7f6e\u4fe1\u606f\u5931\u8d25\uff0c\u662f\u5426\u91cd\u65b0\u83b7\u53d6\uff1f"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "\u91cd\u65b0\u83b7\u53d6"

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    invoke-direct {v0, v1, v10}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public synthetic b(ZLcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/e;->a(ZLcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method

.method public synthetic d(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/model/e;->c(Z)V

    return-void
.end method

.method public synthetic g(ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/e;->f(ZLandroid/view/View;)V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/model/e;->i(Z)V

    return-void
.end method

.method public i(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/s/g;->a:Lcn/mucang/jiakaoyi/uilib/s/g;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/s/g;->a()Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "\u83b7\u53d6\u8bbe\u5907\u914d\u7f6e\u4fe1\u606f"

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 3
    :cond_1
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/model/d;

    invoke-direct {v1, p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/model/d;-><init>(Lcn/mucang/jiakaoyi/uilib/model/e;ZLcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
