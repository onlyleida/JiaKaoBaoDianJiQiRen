.class public final Lcn/mucang/jiakaoyi/sundial/service/strategy/d;
.super Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\n\u001a\u00020\u0004H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/service/strategy/JkyDataStrategy;",
        "Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;",
        "()V",
        "sendCarModel",
        "",
        "carModel",
        "Lcn/mucang/sundial/android/model/CarModel;",
        "start",
        "p0",
        "Landroid/content/Context;",
        "stop",
        "sundial_release"
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcn/mucang/sundial/android/model/CarModel;)V
    .locals 1

    const-string v0, "carModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;->dataCallBack:Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;->onResult(Lcn/mucang/sundial/android/model/CarModel;)V

    :goto_0
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
