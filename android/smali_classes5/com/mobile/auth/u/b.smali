.class public Lcom/mobile/auth/u/b;
.super Lcom/mobile/auth/u/a;
.source "SourceFile"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mobile/auth/gatewayauth/model/VendorConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/u/a;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/mobile/auth/u/b;->a:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/mobile/auth/u/b;->f()V

    return-void
.end method

.method private declared-synchronized a(Lcom/mobile/auth/gatewayauth/model/psc_info_upload/AllRBInfo;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/AllRBInfo;->getResponse()Lcom/mobile/auth/gatewayauth/model/psc_info_upload/PnsVendorQueryResponse;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/PnsVendorQueryResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Result;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Result;->getModule_list()Lcom/mobile/auth/gatewayauth/model/psc_info_upload/ModuleList;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/ModuleList;->getModule()Ljava/util/List;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Module;

    new-instance v2, Lcom/mobile/auth/gatewayauth/model/VendorConfig;

    invoke-direct {v2}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;-><init>()V

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/PnsVendorQueryResponse;->getRequest_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Module;->getVendor_access_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/mobile/auth/gatewayauth/utils/AESUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->setVendorAccessId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Module;->getVendor_access_secret()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/mobile/auth/gatewayauth/utils/AESUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->setVendorAccessSecret(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Module;->getVendor_key()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/mobile/auth/gatewayauth/utils/AESUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->setVendorKey(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->getVendorKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/c;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    iget-object v3, p0, Lcom/mobile/auth/u/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private f()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/u/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/AllRBInfo;->fromJson(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/psc_info_upload/AllRBInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/AllRBInfo;->getResponse()Lcom/mobile/auth/gatewayauth/model/psc_info_upload/PnsVendorQueryResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/PnsVendorQueryResponse;->getRequest_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mobile/auth/u/a;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/PnsVendorQueryResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Result;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Result;->getModule_list()Lcom/mobile/auth/gatewayauth/model/psc_info_upload/ModuleList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/ModuleList;->getModule()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mobile/auth/u/a;->a(Z)V

    invoke-virtual {p0}, Lcom/mobile/auth/u/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mobile/auth/u/b;->a(Lcom/mobile/auth/gatewayauth/model/psc_info_upload/AllRBInfo;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/mobile/auth/u/a;->a(Z)V
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


# virtual methods
.method public declared-synchronized e()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/mobile/auth/gatewayauth/model/VendorConfig;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/u/b;->a:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isResultTimeout()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/u/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/AllRBInfo;->fromJson(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/psc_info_upload/AllRBInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/AllRBInfo;->getResponse()Lcom/mobile/auth/gatewayauth/model/psc_info_upload/PnsVendorQueryResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/PnsVendorQueryResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Result;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "600015"

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Result;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method
