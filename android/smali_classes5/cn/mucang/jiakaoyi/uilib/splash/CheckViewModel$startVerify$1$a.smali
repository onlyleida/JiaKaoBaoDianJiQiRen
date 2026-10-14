.class public final Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/sundial/client/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$1$1",
        "Lcn/mucang/jiakaoyi/sundial/client/SundialListener;",
        "enableSundial",
        "",
        "getImei",
        "",
        "getTenantId",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/s/g;->a:Lcn/mucang/jiakaoyi/uilib/s/g;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/s/g;->a()Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;->enableSundialEntrance:Z

    :goto_0
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
