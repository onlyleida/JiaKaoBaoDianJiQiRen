.class public final Lcn/mucang/sundial/library/entity/CarStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/sundial/library/entity/CarStatus;",
        "",
        "",
        "flameOutTime",
        "J",
        "getFlameOutTime",
        "()J",
        "setFlameOutTime",
        "(J)V",
        "",
        "carNo",
        "Ljava/lang/String;",
        "getCarNo",
        "()Ljava/lang/String;",
        "setCarNo",
        "(Ljava/lang/String;)V",
        "Lcn/mucang/sundial/android/model/CarModel;",
        "carModel",
        "Lcn/mucang/sundial/android/model/CarModel;",
        "getCarModel",
        "()Lcn/mucang/sundial/android/model/CarModel;",
        "setCarModel",
        "(Lcn/mucang/sundial/android/model/CarModel;)V",
        "<init>",
        "()V",
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
.field private carModel:Lcn/mucang/sundial/android/model/CarModel;

.field private carNo:Ljava/lang/String;

.field private flameOutTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/sundial/library/entity/CarStatus;->carNo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCarModel()Lcn/mucang/sundial/android/model/CarModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/CarStatus;->carModel:Lcn/mucang/sundial/android/model/CarModel;

    return-object v0
.end method

.method public final getCarNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/CarStatus;->carNo:Ljava/lang/String;

    return-object v0
.end method

.method public final getFlameOutTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/entity/CarStatus;->flameOutTime:J

    return-wide v0
.end method

.method public final setCarModel(Lcn/mucang/sundial/android/model/CarModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/CarStatus;->carModel:Lcn/mucang/sundial/android/model/CarModel;

    return-void
.end method

.method public final setCarNo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/CarStatus;->carNo:Ljava/lang/String;

    return-void
.end method

.method public final setFlameOutTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/entity/CarStatus;->flameOutTime:J

    return-void
.end method
