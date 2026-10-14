.class Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/manager/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

.field final synthetic c:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->c:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setEndTime(J)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSuccess(Z)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v0, p2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setTopTraceId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {p2, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setFailRet(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->c:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-static {p2, v0}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-interface {p2, p1}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onError(Ljava/lang/Object;)V
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

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/mobile/auth/gatewayauth/model/VendorConfig;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->c:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->c:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->c:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setEndTime(J)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSuccess(Z)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {p1, p2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setTopTraceId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->c:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-static {p1, p2}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
