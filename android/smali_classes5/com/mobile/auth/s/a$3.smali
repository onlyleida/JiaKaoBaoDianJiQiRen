.class Lcom/mobile/auth/s/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/x/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/s/a;->f(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

.field final synthetic c:Lcom/mobile/auth/s/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/s/a;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/s/a$3;->c:Lcom/mobile/auth/s/a;

    iput-object p2, p0, Lcom/mobile/auth/s/a$3;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    iput-object p3, p0, Lcom/mobile/auth/s/a$3;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/s/a$3;->c:Lcom/mobile/auth/s/a;

    invoke-static {v0}, Lcom/mobile/auth/s/a;->a(Lcom/mobile/auth/s/a;)Lcom/mobile/auth/o/a;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "cucc\uff1a"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getVerifyInfo:"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/model/cucctoken/CUCCTokenRB;->fromJson(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/cucctoken/CUCCTokenRB;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v5, p0, Lcom/mobile/auth/s/a$3;->c:Lcom/mobile/auth/s/a;

    invoke-static {v5}, Lcom/mobile/auth/s/a;->a(Lcom/mobile/auth/s/a;)Lcom/mobile/auth/o/a;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "CUCCValidManager init exception:"

    aput-object v6, v2, v3

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {v5, v2}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/mobile/auth/s/a$3;->c:Lcom/mobile/auth/s/a;

    iget-object v2, p0, Lcom/mobile/auth/s/a$3;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    const-string v3, "-10008"

    const-string v4, "JSON\u8f6c\u6362\u5931\u8d25"

    iget-object v6, p0, Lcom/mobile/auth/s/a$3;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/mobile/auth/s/a;->a(Lcom/mobile/auth/s/a;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/mobile/auth/s/a$3;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/cucctoken/CUCCTokenRB;->getTraceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setCarrierTraceId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/cucctoken/CUCCTokenRB;->getResultCode()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/cucctoken/CUCCTokenRB;->getResultData()Lcom/mobile/auth/gatewayauth/model/cucctoken/ResultData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/cucctoken/CUCCTokenRB;->getResultData()Lcom/mobile/auth/gatewayauth/model/cucctoken/ResultData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/cucctoken/ResultData;->getAccessCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/cucctoken/CUCCTokenRB;->getResultData()Lcom/mobile/auth/gatewayauth/model/cucctoken/ResultData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/cucctoken/ResultData;->getExpires()J

    move-result-wide v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object p1, p0, Lcom/mobile/auth/s/a$3;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {p1, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAccessCode(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mobile/auth/s/a$3;->c:Lcom/mobile/auth/s/a;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/cucctoken/CUCCTokenRB;->getResultCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/mobile/auth/s/a$3;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-static/range {v4 .. v9}, Lcom/mobile/auth/s/a;->a(Lcom/mobile/auth/s/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    iget-object p1, p0, Lcom/mobile/auth/s/a$3;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/a$c;->a()Lcom/mobile/auth/gatewayauth/manager/a$c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/a$c$a;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$c$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v2, v2, v6

    add-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/mobile/auth/gatewayauth/manager/a$c$a;->a(J)Lcom/mobile/auth/gatewayauth/manager/a$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/a$c$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$c;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/mobile/auth/s/a$3;->c:Lcom/mobile/auth/s/a;

    iget-object v2, p0, Lcom/mobile/auth/s/a$3;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/cucctoken/CUCCTokenRB;->getResultCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/cucctoken/CUCCTokenRB;->getResultMsg()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/s/a$3;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    :goto_1
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/mobile/auth/s/a;->a(Lcom/mobile/auth/s/a;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/mobile/auth/s/a$3;->c:Lcom/mobile/auth/s/a;

    iget-object v2, p0, Lcom/mobile/auth/s/a$3;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/cucctoken/CUCCTokenRB;->getResultCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/cucctoken/CUCCTokenRB;->getResultMsg()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/s/a$3;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
