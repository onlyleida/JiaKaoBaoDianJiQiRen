.class Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$4;
.super Lcom/nirvana/tools/jsoner/JsonType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->loadVendorConfigsBySceneCodeFromDisk(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nirvana/tools/jsoner/JsonType<",
        "Lcom/mobile/auth/gatewayauth/model/VendorConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$4;->a:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-direct {p0}, Lcom/nirvana/tools/jsoner/JsonType;-><init>()V

    return-void
.end method
