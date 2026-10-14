.class Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB$2;
.super Lcom/nirvana/tools/jsoner/JsonType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;->fromJson(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nirvana/tools/jsoner/JsonType<",
        "Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/PscQueryConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB$2;->a:Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;

    invoke-direct {p0}, Lcom/nirvana/tools/jsoner/JsonType;-><init>()V

    return-void
.end method
