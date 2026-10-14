.class public final Lcn/mucang/sundial/library/entity/DefaultConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/entity/DefaultConfig$Info;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R2\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/sundial/library/entity/DefaultConfig;",
        "Ljava/io/Serializable;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "appParam",
        "Ljava/util/Map;",
        "getAppParam",
        "()Ljava/util/Map;",
        "setAppParam",
        "(Ljava/util/Map;)V",
        "Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;",
        "deviceConfig",
        "Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;",
        "getDeviceConfig",
        "()Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;",
        "setDeviceConfig",
        "(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V",
        "Lcn/mucang/sundial/library/entity/DefaultConfig$Info;",
        "info",
        "Lcn/mucang/sundial/library/entity/DefaultConfig$Info;",
        "getInfo",
        "()Lcn/mucang/sundial/library/entity/DefaultConfig$Info;",
        "setInfo",
        "(Lcn/mucang/sundial/library/entity/DefaultConfig$Info;)V",
        "<init>",
        "()V",
        "Info",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private appParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

.field private info:Lcn/mucang/sundial/library/entity/DefaultConfig$Info;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/DefaultConfig;->appParam:Ljava/util/Map;

    return-object v0
.end method

.method public final getDeviceConfig()Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/DefaultConfig;->deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    return-object v0
.end method

.method public final getInfo()Lcn/mucang/sundial/library/entity/DefaultConfig$Info;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/DefaultConfig;->info:Lcn/mucang/sundial/library/entity/DefaultConfig$Info;

    return-object v0
.end method

.method public final setAppParam(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/DefaultConfig;->appParam:Ljava/util/Map;

    return-void
.end method

.method public final setDeviceConfig(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/DefaultConfig;->deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    return-void
.end method

.method public final setInfo(Lcn/mucang/sundial/library/entity/DefaultConfig$Info;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/DefaultConfig;->info:Lcn/mucang/sundial/library/entity/DefaultConfig$Info;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSON.toJSONString(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
