.class public Lcom/mobile/auth/q/c;
.super Lcom/mobile/auth/gatewayauth/manager/a;
.source "SourceFile"


# instance fields
.field private d:Lcom/mobile/auth/q/a;

.field private e:Lcom/mobile/auth/gatewayauth/manager/d;

.field private f:Lcom/mobile/auth/o/a;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/a;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/q/c;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/mobile/auth/q/a;->a(Landroid/content/Context;)Lcom/mobile/auth/q/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/q/c;->d:Lcom/mobile/auth/q/a;

    iput-object p2, p0, Lcom/mobile/auth/q/c;->e:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/d;->a()Lcom/mobile/auth/o/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/q/c;->f:Lcom/mobile/auth/o/a;

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/q/c;)Lcom/mobile/auth/o/a;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/q/c;->f:Lcom/mobile/auth/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private a(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/gatewayauth/manager/a$a;",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/model/MonitorStruct;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/q/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    const-string p5, "600012"

    invoke-direct {p0, p2, p5}, Lcom/mobile/auth/q/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/base/c;->a()Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->d(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->c(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->b(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onError(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/q/c;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/mobile/auth/q/c;->a(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/mobile/auth/q/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 2

    if-eqz p5, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p5, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setCarrierSdkCode(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSuccess(Z)V

    invoke-virtual {p5, v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setEndTime(J)V

    if-nez p4, :cond_0

    invoke-virtual {p5, p2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setCarrierSdkMsg(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setFailRet(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setCarrierFailedResultData(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p5, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setUrgency(I)V

    const-string p1, "cm_zyhl"

    invoke-virtual {p5, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setVendorKey(Ljava/lang/String;)V

    new-instance p1, Lcom/mobile/auth/q/c$4;

    invoke-direct {p1, p0, p5}, Lcom/mobile/auth/q/c$4;-><init>(Lcom/mobile/auth/q/c;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mobile/auth/q/c;)J
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/mobile/auth/gatewayauth/manager/a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p0

    const-wide/16 v0, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-wide v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-wide v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v1, 0x9c40

    if-gt v0, v1, :cond_1

    return-object p2

    :catch_0
    :cond_1
    const/4 v0, -0x1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "200027"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "200024"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "200023"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "200022"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_4
    const-string v1, "102507"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "102203"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_6
    const-string v1, "102103"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "102101"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    const-string p1, "-10006"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p1

    :pswitch_1
    :try_start_3
    const-string p1, "600015"

    :pswitch_2
    return-object p1

    :pswitch_3
    const-string p1, "600025"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p1

    :goto_1
    return-object p2

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    :try_start_4
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object p2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object p2

    :sswitch_data_0
    .sparse-switch
        0x5659571f -> :sswitch_7
        0x56595721 -> :sswitch_6
        0x56595ae2 -> :sswitch_5
        0x56596629 -> :sswitch_4
        0x580d437e -> :sswitch_3
        0x580d437f -> :sswitch_2
        0x580d4380 -> :sswitch_1
        0x580d4383 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/gatewayauth/manager/a$c;",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/model/MonitorStruct;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/q/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    const-string p5, "600011"

    invoke-direct {p0, p2, p5}, Lcom/mobile/auth/q/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/base/c;->a()Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->d(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->b(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->c(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onError(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mobile/auth/q/c;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/mobile/auth/q/c;->c(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/mobile/auth/q/c;)Lcom/mobile/auth/q/a;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/q/c;->d:Lcom/mobile/auth/q/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private c(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/gatewayauth/manager/a$a;",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/model/MonitorStruct;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/q/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    const-string p5, "600011"

    invoke-direct {p0, p2, p5}, Lcom/mobile/auth/q/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/base/c;->a()Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->d(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->b(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->c(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onError(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/mobile/auth/q/c;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/mobile/auth/q/c;->b(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/mobile/auth/q/c;)Lcom/mobile/auth/gatewayauth/manager/d;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/q/c;->e:Lcom/mobile/auth/gatewayauth/manager/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/mobile/auth/gatewayauth/manager/a;->a(J)V

    iget-object p1, p0, Lcom/mobile/auth/q/c;->d:Lcom/mobile/auth/q/a;

    iget-wide v0, p0, Lcom/mobile/auth/gatewayauth/manager/a;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/mobile/auth/q/a;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/q/c;->d:Lcom/mobile/auth/q/a;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/q/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/q/c;->d:Lcom/mobile/auth/q/a;

    invoke-virtual {p1, p2}, Lcom/mobile/auth/q/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/mobile/auth/e/a;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/q/c;->d:Lcom/mobile/auth/q/a;

    invoke-virtual {v0}, Lcom/mobile/auth/q/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized d(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/a$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/gatewayauth/manager/a$a;",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            ">;",
            "Lcom/mobile/auth/gatewayauth/manager/a$b;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v5, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {v5}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;-><init>()V

    const-string v0, "timeout"

    iget-wide v1, p0, Lcom/mobile/auth/gatewayauth/manager/a;->c:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->putApiParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/a$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/a$b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setRequestId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setStartTime(J)V

    const-string p2, "cmcc.get.logincode"

    invoke-virtual {v5, p2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAction(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/a;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/a;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/mobile/auth/q/c;->d:Lcom/mobile/auth/q/a;

    new-instance v0, Lcom/mobile/auth/q/c$1;

    invoke-direct {v0, p0, v5, p1}, Lcom/mobile/auth/q/c$1;-><init>(Lcom/mobile/auth/q/c;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V

    const/4 p1, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/mobile/auth/q/a;->a(Lcom/mobile/auth/e/e;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "600017"

    const-string v3, "AppID Secret\u89e3\u6790\u5931\u8d25"

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/q/c;->a(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/gatewayauth/manager/a$a;",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            ">;",
            "Lcom/mobile/auth/gatewayauth/manager/a$b;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/mobile/auth/q/c$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/mobile/auth/q/c$2;-><init>(Lcom/mobile/auth/q/c;Lcom/mobile/auth/gatewayauth/manager/a$b;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Lcom/mobile/auth/gatewayauth/utils/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/a$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/gatewayauth/manager/a$c;",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            ">;",
            "Lcom/mobile/auth/gatewayauth/manager/a$b;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v5, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {v5}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;-><init>()V

    const-string v0, "timeout"

    iget-wide v1, p0, Lcom/mobile/auth/gatewayauth/manager/a;->c:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->putApiParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/a$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/a$b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setRequestId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setStartTime(J)V

    const-string p2, "cmcc.getoken"

    invoke-virtual {v5, p2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAction(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/a;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/a;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/mobile/auth/q/c;->d:Lcom/mobile/auth/q/a;

    new-instance v0, Lcom/mobile/auth/q/c$3;

    invoke-direct {v0, p0, v5, p1}, Lcom/mobile/auth/q/c$3;-><init>(Lcom/mobile/auth/q/c;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V

    const/4 p1, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/mobile/auth/q/a;->b(Lcom/mobile/auth/e/e;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "600017"

    const-string v3, "AppID Secret\u89e3\u6790\u5931\u8d25"

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/q/c;->b(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
