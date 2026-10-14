.class public Lcn/mucang/android/core/config/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/app/Activity;

.field private b:Lcn/mucang/android/core/config/t;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/mucang/android/core/config/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/config/o;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/core/config/o;->b:Lcn/mucang/android/core/config/t;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/config/o;->b:Lcn/mucang/android/core/config/t;

    invoke-interface {v0}, Lcn/mucang/android/core/config/t;->getStatName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    const-string v2, "\u6b64Activity\u6ca1\u6709\u8bbe\u7f6e\u540d\u5b57:"

    if-nez v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/core/config/o;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@\u7a7a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hadeslee"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private k()V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->o()J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xea60

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v4, 0x3e8

    .line 5
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "double1"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "common"

    .line 6
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    const-string v3, "advertOort"

    const-string v4, "\u540e\u53f0\u8fd0\u884c\u65f6\u95f4"

    .line 7
    invoke-static {v3, v4, v0, v1, v2}, Lcn/mucang/android/core/utils/l0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/config/o;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcn/mucang/android/core/utils/v;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->C()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/o;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcn/mucang/android/core/config/o;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/core/config/o;->b:Lcn/mucang/android/core/config/t;

    invoke-interface {v2}, Lcn/mucang/android/core/config/t;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/l0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/config/o;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcn/mucang/android/core/config/o;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/core/config/o;->b:Lcn/mucang/android/core/config/t;

    invoke-interface {v2}, Lcn/mucang/android/core/config/t;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/l0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->h()Lcn/mucang/android/core/config/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->o()J

    move-result-wide v1

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->n()J

    move-result-wide v3

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/s;->h()Lcn/mucang/android/core/config/s;

    move-result-object v7

    sub-long v3, v5, v3

    .line 7
    invoke-virtual {v7}, Lcn/mucang/android/core/config/s;->c()J

    move-result-wide v8

    cmp-long v10, v3, v8

    if-lez v10, :cond_1

    const-string v3, "\u5e7f\u544a\u53ef\u663e\u4e5f"

    .line 8
    invoke-static {v3}, Lf/a/a/a/c;->e(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v8, v1, v3

    if-lez v8, :cond_0

    sub-long/2addr v5, v1

    .line 9
    invoke-virtual {v7}, Lcn/mucang/android/core/config/s;->i()J

    move-result-wide v1

    cmp-long v3, v5, v1

    if-lez v3, :cond_0

    const-string v1, "\u6b64\u65f6\u771f\u663e\u4e5f"

    .line 10
    invoke-static {v1}, Lf/a/a/a/c;->e(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->B()V

    .line 12
    iget-object v1, p0, Lcn/mucang/android/core/config/o;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcn/mucang/android/core/config/i;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u6b64\u65f6\u4e0d\u80fd\u663e"

    .line 13
    invoke-static {v0}, Lf/a/a/a/c;->e(Ljava/lang/String;)V

    .line 14
    :cond_1
    :goto_0
    invoke-static {}, Lcn/mucang/android/core/callphone/a;->h()Lcn/mucang/android/core/callphone/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/callphone/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {}, Lcn/mucang/android/core/callphone/a;->h()Lcn/mucang/android/core/callphone/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/callphone/a;->r()V

    .line 16
    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/core/config/o;->k()V

    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method
