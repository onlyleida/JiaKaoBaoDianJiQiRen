.class Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;
.super Lcom/mobile/auth/gatewayauth/utils/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->checkEnvAvailable(ILcom/mobile/auth/gatewayauth/TokenResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

.field final synthetic c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ILcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    iput p2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->a:I

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/utils/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "AppID Secret\u89e3\u6790\u5931\u8d25"

    const-string v2, "600017"

    :try_start_0
    iget-object v3, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->i(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/manager/d;->k()Ljava/lang/String;

    move-result-object v15

    new-instance v14, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {v14}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;-><init>()V

    const-string v4, "sdk.check"

    invoke-virtual {v14, v4}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAction(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v14, v4, v5}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setStartTime(J)V

    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->getApiLevel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setApiLevel(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setVendorKey(Ljava/lang/String;)V

    const/4 v13, 0x2

    invoke-virtual {v14, v13}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setUrgency(I)V

    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->i(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/manager/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setRequestId(Ljava/lang/String;)V

    const-string v4, "type"

    iget v5, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->a:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->putApiParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v12, 0x1

    :try_start_1
    iget v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->a:I

    if-eq v4, v12, :cond_1

    if-eq v4, v13, :cond_1

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v0

    const-string v2, "600025"

    const-string v4, "\u53c2\u6570\u9519\u8bef"

    invoke-interface {v0, v2, v4, v3}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v13

    move-object v10, v3

    move-object v11, v14

    move-object v14, v15

    invoke-virtual/range {v4 .. v14}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    return-void

    :cond_1
    if-ne v12, v4, :cond_2

    :try_start_3
    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->i(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/manager/d;->e()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v14, v4}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSessionId(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->i(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/manager/d;->d()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :goto_1
    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-result-object v4

    iget-object v5, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v5

    invoke-virtual {v4, v5, v12}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->a(Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Z)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v5, "; errorMsg = "

    const-string v6, "checkEnvAvailable errorCode = "

    if-eqz v4, :cond_4

    :try_start_4
    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    aput-object v6, v2, v17

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v12

    aput-object v5, v2, v13

    const/4 v5, 0x3

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v0, v2}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_3

    :try_start_5
    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v2, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v13

    move-object v4, v0

    move-object v10, v3

    move-object v11, v14

    move-object v14, v15

    invoke-virtual/range {v4 .. v14}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_3

    :cond_4
    :try_start_6
    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v4

    invoke-interface {v4, v2, v0, v3}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v16

    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v4

    filled-new-array {v6, v2, v5, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v16, :cond_5

    :try_start_7
    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v13

    move-object v10, v3

    move-object v11, v14

    move-object v14, v15

    invoke-virtual/range {v4 .. v14}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_5
    return-void

    :cond_6
    :try_start_8
    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mobile/auth/gatewayauth/manager/f;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v0

    const-string v2, "600009"

    const-string v4, "\u65e0\u6cd5\u5224\u8fd0\u8425\u5546"

    invoke-interface {v0, v2, v4, v3}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v16

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    const-string v2, "checkEnvAvailable failed! Unsupported Vendor!"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v16, :cond_7

    :try_start_9
    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v13

    move-object v10, v3

    move-object v11, v14

    move-object v14, v15

    invoke-virtual/range {v4 .. v14}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_7
    return-void

    :cond_8
    :try_start_a
    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    move-result-object v0

    const-string v2, ""

    new-instance v4, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30$1;

    invoke-direct {v4, v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30$1;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;)V

    iget-object v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->g()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v8}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    move-result-object v8

    iget-object v9, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/b;

    move-result-object v9

    iget-object v10, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v10}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/mobile/auth/gatewayauth/manager/e;->a(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/manager/b;Lcom/mobile/auth/o/a;)Lcom/mobile/auth/gatewayauth/manager/e;

    move-result-object v7

    invoke-virtual {v0, v2, v4, v7}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/e;)V

    :cond_9
    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_a
    iget v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->a:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const-string v2, "\u7cfb\u7edf\u7ef4\u62a4\uff0c\u529f\u80fd\u4e0d\u53ef\u7528"

    const-string v4, "600013"

    if-ne v0, v12, :cond_c

    :try_start_b
    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/b;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v0

    invoke-interface {v0, v4, v2, v3}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v16

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    filled-new-array {v6, v4, v5, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v16, :cond_b

    :try_start_c
    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v13

    move-object v10, v3

    move-object v11, v14

    move-object v14, v15

    invoke-virtual/range {v4 .. v14}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_b
    return-void

    :cond_c
    :try_start_d
    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/b;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v0

    invoke-interface {v0, v4, v2, v3}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v16

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    filled-new-array {v6, v4, v5, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v16, :cond_d

    :try_start_e
    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v13

    move-object v10, v3

    move-object v11, v14

    move-object v14, v15

    invoke-virtual/range {v4 .. v14}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :cond_d
    return-void

    :cond_e
    :try_start_f
    const-string v0, "600024"

    invoke-virtual {v14, v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAuthSdkCode(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, "600024"

    const-string v8, "\u7ec8\u7aef\u652f\u6301\u8ba4\u8bc1"

    const-string v9, ""

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object v10, v3

    move-object v11, v14

    const/16 v18, 0x1

    move-object v12, v0

    move-object v13, v2

    move-object v2, v14

    move-object v14, v15

    :try_start_10
    invoke-virtual/range {v4 .. v14}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_2
    move-object v2, v14

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_3
    move-object v2, v14

    const/16 v18, 0x1

    :goto_4
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v4

    const-string v5, "600010"

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0, v3}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v16

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "checkEnvAvailable exception:"

    aput-object v5, v4, v17

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->toJsonString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v18

    invoke-virtual {v0, v4}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v16, :cond_10

    :try_start_12
    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v13

    move-object v10, v3

    move-object v11, v2

    move-object v14, v15

    invoke-virtual/range {v4 .. v14}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v16, :cond_f

    iget-object v4, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v10, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v10}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v13

    move-object v10, v3

    move-object v11, v2

    move-object v14, v15

    invoke-virtual/range {v4 .. v14}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    :cond_f
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_13
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_10
    :goto_6
    return-void
.end method
