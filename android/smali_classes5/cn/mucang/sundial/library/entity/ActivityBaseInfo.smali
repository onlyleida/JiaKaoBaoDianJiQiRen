.class public final Lcn/mucang/sundial/library/entity/ActivityBaseInfo;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\"\u0010\u000c\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/sundial/library/entity/ActivityBaseInfo;",
        "",
        "",
        "imei",
        "Ljava/lang/String;",
        "getImei",
        "()Ljava/lang/String;",
        "setImei",
        "(Ljava/lang/String;)V",
        "appVersion",
        "getAppVersion",
        "setAppVersion",
        "carNo",
        "getCarNo",
        "setCarNo",
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
.field private appVersion:Ljava/lang/String;

.field private carNo:Ljava/lang/String;

.field private imei:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->imei:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->carNo:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->appVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getCarNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->carNo:Ljava/lang/String;

    return-object v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public final setCarNo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->carNo:Ljava/lang/String;

    return-void
.end method

.method public final setImei(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->imei:Ljava/lang/String;

    return-void
.end method
