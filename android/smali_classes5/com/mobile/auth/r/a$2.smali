.class Lcom/mobile/auth/r/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/r/a;->a(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mobile/auth/r/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/r/a;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/r/a$2;->d:Lcom/mobile/auth/r/a;

    iput-object p2, p0, Lcom/mobile/auth/r/a$2;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    iput-object p3, p0, Lcom/mobile/auth/r/a$2;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iput-object p4, p0, Lcom/mobile/auth/r/a$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/r/a$2;->d:Lcom/mobile/auth/r/a;

    invoke-static {v0}, Lcom/mobile/auth/r/a;->a(Lcom/mobile/auth/r/a;)Lcom/mobile/auth/o/a;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ctcc\uff1a"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getLoginInfo:"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/mobile/auth/r/a$2;->d:Lcom/mobile/auth/r/a;

    iget-object v6, p0, Lcom/mobile/auth/r/a$2;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    const-string v7, "-10008"

    const-string v8, "CTCC \u83b7\u5f97\u7684\u624b\u673a\u6388\u6743\u7801\u7ed3\u679c\u4e3a\u7a7a"

    const-string v9, ""

    iget-object v10, p0, Lcom/mobile/auth/r/a$2;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iget-object v11, p0, Lcom/mobile/auth/r/a$2;->c:Ljava/lang/String;

    invoke-static/range {v5 .. v11}, Lcom/mobile/auth/r/a;->a(Lcom/mobile/auth/r/a;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/model/ctcctoken/CTCCTokenRet;->fromJson(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/ctcctoken/CTCCTokenRet;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    iget-object v1, p0, Lcom/mobile/auth/r/a$2;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/ctcctoken/CTCCTokenRet;->getReqId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setCarrierTraceId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/ctcctoken/CTCCTokenRet;->getResult()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/ctcctoken/CTCCTokenRet;->getData()Lcom/mobile/auth/gatewayauth/model/ctcctoken/Data;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/ctcctoken/CTCCTokenRet;->getData()Lcom/mobile/auth/gatewayauth/model/ctcctoken/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ctcctoken/Data;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ctcctoken/Data;->getAccessCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object p1, p0, Lcom/mobile/auth/r/a$2;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/a$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    const-string v5, "\u5929\u7ffc\u8d26\u53f7\u8ba4\u8bc1\u670d\u52a1\u6761\u6b3e"

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->c(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    const-string v5, "https://e.189.cn/sdk/agreement/detail.do?isWap=true&hidetop=true&appKey=8138111118"

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->d(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->b(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ctcctoken/Data;->getExpiredTime()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v7, v1

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a(J)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$a;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onSuccess(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/mobile/auth/r/a$2;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {p1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setPhoneNumber(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/r/a$2;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {p1, v3}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAccessCode(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mobile/auth/r/a$2;->d:Lcom/mobile/auth/r/a;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/ctcctoken/CTCCTokenRet;->getResult()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/mobile/auth/r/a$2;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-static/range {v4 .. v9}, Lcom/mobile/auth/r/a;->a(Lcom/mobile/auth/r/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/mobile/auth/r/a$2;->d:Lcom/mobile/auth/r/a;

    iget-object v2, p0, Lcom/mobile/auth/r/a$2;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/ctcctoken/CTCCTokenRet;->getResult()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/ctcctoken/CTCCTokenRet;->getMsg()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/r/a$2;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iget-object v6, p0, Lcom/mobile/auth/r/a$2;->c:Ljava/lang/String;

    :goto_0
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/mobile/auth/r/a;->a(Lcom/mobile/auth/r/a;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/mobile/auth/r/a$2;->d:Lcom/mobile/auth/r/a;

    iget-object v2, p0, Lcom/mobile/auth/r/a$2;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/ctcctoken/CTCCTokenRet;->getResult()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/ctcctoken/CTCCTokenRet;->getMsg()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/r/a$2;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iget-object v6, p0, Lcom/mobile/auth/r/a$2;->c:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/mobile/auth/r/a$2;->d:Lcom/mobile/auth/r/a;

    invoke-static {v1}, Lcom/mobile/auth/r/a;->a(Lcom/mobile/auth/r/a;)Lcom/mobile/auth/o/a;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "CTCCValidManager init exception:"

    aput-object v5, v2, v3

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mobile/auth/r/a$2;->d:Lcom/mobile/auth/r/a;

    iget-object v6, p0, Lcom/mobile/auth/r/a$2;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    const-string v7, "-10008"

    const-string v8, "JSON\u8f6c\u6362\u5931\u8d25"

    iget-object v10, p0, Lcom/mobile/auth/r/a$2;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iget-object v11, p0, Lcom/mobile/auth/r/a$2;->c:Ljava/lang/String;

    move-object v9, p1

    invoke-static/range {v5 .. v11}, Lcom/mobile/auth/r/a;->a(Lcom/mobile/auth/r/a;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
