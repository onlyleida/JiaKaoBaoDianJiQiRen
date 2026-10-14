.class Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$3;->b:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$3;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$3;->b:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)Lcom/mobile/auth/o/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$3;->b:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->c(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$3;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/manager/d;->a(Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/o/a;->a(Ljava/lang/String;I)V
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
