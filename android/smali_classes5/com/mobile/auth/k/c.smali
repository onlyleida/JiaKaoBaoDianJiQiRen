.class public Lcom/mobile/auth/k/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/k/c$b;
    }
.end annotation


# static fields
.field private static a:Lcom/mobile/auth/k/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mobile/auth/k/c$b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mobile/auth/k/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mobile/auth/k/c$b;-><init>(Lcom/mobile/auth/k/c$a;)V

    sput-object v0, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    return-void
.end method

.method public static a()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    const-string v2, "authPageIn"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    const-string v2, "authPageOut"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    const-string v2, "authClickFailed"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    const-string v2, "authClickSuccess"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    const-string v2, "timeOnAuthPage"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    const-string v2, "authPrivacyState"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .locals 13

    const-string v0, "startnetworkType"

    const-string v1, "appid"

    const-string v2, "timeOnAuthPage"

    const-string v3, "authClickFailed"

    const-string v4, "authClickSuccess"

    const-string v5, "authPageOut"

    const-string v6, "authPageIn"

    const-string v7, ""

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/a;->a()Lcom/mobile/auth/f/a;

    move-result-object v8

    :try_start_0
    invoke-virtual {v8}, Lcom/mobile/auth/f/a;->o()Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    :cond_0
    new-instance v8, Lcom/mobile/auth/h/e;

    invoke-direct {v8}, Lcom/mobile/auth/h/e;-><init>()V

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    invoke-virtual {v11, v6, v10}, Lcom/mobile/auth/k/c$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_1

    sget-object v11, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v6, v12

    :goto_0
    invoke-virtual {v8, v6}, Lcom/mobile/auth/h/e;->e(Ljava/lang/String;)V

    sget-object v6, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    invoke-virtual {v6, v5, v10}, Lcom/mobile/auth/k/c$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v5, v12

    :goto_1
    invoke-virtual {v8, v5}, Lcom/mobile/auth/h/e;->f(Ljava/lang/String;)V

    sget-object v5, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    invoke-virtual {v5, v4, v10}, Lcom/mobile/auth/k/c$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v4, v12

    :goto_2
    invoke-virtual {v8, v4}, Lcom/mobile/auth/h/e;->c(Ljava/lang/String;)V

    sget-object v4, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    invoke-virtual {v4, v3, v10}, Lcom/mobile/auth/k/c$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v3, v12

    :goto_3
    invoke-virtual {v8, v3}, Lcom/mobile/auth/h/e;->b(Ljava/lang/String;)V

    sget-object v3, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    invoke-virtual {v3, v2, v10}, Lcom/mobile/auth/k/c$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    :cond_5
    invoke-virtual {v8, v12}, Lcom/mobile/auth/h/e;->d(Ljava/lang/String;)V

    sget-object v2, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    const-string v3, "authPrivacyState"

    invoke-virtual {v2, v3, v10}, Lcom/mobile/auth/k/c$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/mobile/auth/h/e;->a(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/mobile/auth/h/e;->a()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/mobile/auth/j/a;

    invoke-direct {v3}, Lcom/mobile/auth/j/a;-><init>()V

    invoke-virtual {p1, v1, v7}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/j/a;->D(Ljava/lang/String;)V

    const-string v4, "traceId"

    invoke-virtual {p1, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/j/a;->y(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mobile/auth/j/a;->D(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/k/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mobile/auth/j/a;->r(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/k/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mobile/auth/j/a;->s(Ljava/lang/String;)V

    const-string v1, "quick_login_android_5.8.0"

    invoke-virtual {v3, v1}, Lcom/mobile/auth/j/a;->E(Ljava/lang/String;)V

    const-string v1, "android"

    invoke-virtual {v3, v1}, Lcom/mobile/auth/j/a;->p(Ljava/lang/String;)V

    const-string v1, "timeOut"

    invoke-virtual {p1, v1}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mobile/auth/j/a;->q(Ljava/lang/String;)V

    sget-object v1, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    const-string v4, "authPageInTime"

    invoke-virtual {v1, v4, v7}, Lcom/mobile/auth/k/c$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v1, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    const-string v4, "SMSInTime"

    invoke-virtual {v1, v4, v7}, Lcom/mobile/auth/k/c$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_6
    invoke-virtual {v3, v1}, Lcom/mobile/auth/j/a;->z(Ljava/lang/String;)V

    sget-object v1, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    const-string v4, "authPageOutTime"

    invoke-virtual {v1, v4, v7}, Lcom/mobile/auth/k/c$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v1, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    const-string v4, "SMSOutTime"

    invoke-virtual {v1, v4, v7}, Lcom/mobile/auth/k/c$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_7
    invoke-virtual {v3, v1}, Lcom/mobile/auth/j/a;->B(Ljava/lang/String;)V

    const-string v1, "eventTracking5"

    invoke-virtual {v3, v1}, Lcom/mobile/auth/j/a;->C(Ljava/lang/String;)V

    const-string v1, "operatorType"

    invoke-virtual {p1, v1, v7}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mobile/auth/j/a;->u(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v9}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mobile/auth/k/t;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v0}, Lcom/mobile/auth/j/a;->F(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v9}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :goto_5
    const-string v0, "networkClass"

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mobile/auth/j/a;->A(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mobile/auth/j/a;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/t;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mobile/auth/j/a;->v(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/t;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mobile/auth/j/a;->w(Ljava/lang/String;)V

    const-string v0, "simCardNum"

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mobile/auth/j/a;->t(Ljava/lang/String;)V

    const-string v0, "hsaReadPhoneStatePermission"

    invoke-virtual {p1, v0, v9}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "1"

    const-string v4, "0"

    if-eqz v0, :cond_9

    move-object v0, v1

    goto :goto_6

    :cond_9
    move-object v0, v4

    :goto_6
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/mobile/auth/j/a;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/mobile/auth/j/a;->a(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/mobile/auth/k/l;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    move-object v1, v4

    :goto_7
    invoke-virtual {v3, v1}, Lcom/mobile/auth/j/a;->g(Ljava/lang/String;)V

    const-string v0, "imsiState"

    invoke-virtual {p1, v0, v4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mobile/auth/j/a;->f(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v4, "methodTimes"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mobile/auth/j/a;->o(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "EventUtils"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u57cb\u70b9\u65e5\u5fd7\u4e0a\u62a5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mobile/auth/j/a;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mobile/auth/j/b;

    invoke-direct {v0}, Lcom/mobile/auth/j/b;-><init>()V

    invoke-virtual {v3}, Lcom/mobile/auth/j/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/mobile/auth/j/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/cmic/sso/sdk/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    sget-object v0, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Time"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/mobile/auth/k/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/mobile/auth/k/c;->a:Lcom/mobile/auth/k/c$b;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
