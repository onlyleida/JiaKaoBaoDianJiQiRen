.class Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/e;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/manager/e;

.field final synthetic c:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$1;->c:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$1;->b:Lcom/mobile/auth/gatewayauth/manager/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$1;->c:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$1;->a:Ljava/lang/String;

    new-instance v3, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$1$1;

    invoke-direct {v3, p0, v0}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$1$1;-><init>(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$1;Ljava/util/concurrent/CountDownLatch;)V

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$1;->b:Lcom/mobile/auth/gatewayauth/manager/e;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0xbb8

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :catch_0
    :goto_0
    return-void
.end method
