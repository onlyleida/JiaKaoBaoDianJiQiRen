.class final Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.method public run()V
    .locals 7

    const-string v0, "\u5347\u7ea7\u5185\u6d4b "

    const/4 v1, 0x1

    :try_start_0
    const-string v2, ""

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "beta_k3_download_url"

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "beta_k2_download_url"

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "beta_b2_download_url"

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "beta_moto_download_url"

    .line 5
    :cond_3
    :goto_0
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/i/l;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/i/l;-><init>()V

    const-class v4, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;

    invoke-virtual {v3, v2, v4}, Lcn/mucang/jiakaoyi/uilib/i/l;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;

    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->r()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    const-string v5, "_"

    .line 10
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_v_beta_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e$a;

    invoke-direct {v4, p0, v2, v3}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e$a;-><init>(Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e;Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;Ljava/lang/String;)V

    invoke-static {v4}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    const-string v3, "\u672a\u68c0\u6d4b\u5230\u4e0b\u8f7d\u5730\u5740"

    .line 13
    invoke-static {v3}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string v2, "\u65e0\u6548\u7684\u5185\u6d4bkey"

    .line 15
    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_1
    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->b(Z)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 17
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 19
    :goto_3
    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->b(Z)Z

    throw v0
.end method
