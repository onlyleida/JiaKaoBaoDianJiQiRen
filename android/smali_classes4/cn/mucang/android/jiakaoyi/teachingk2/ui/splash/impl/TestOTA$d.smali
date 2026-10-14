.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/k/g0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$otaStateCallback$1",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/callback/FirmwareUpgradeStateCallback;",
        "onReportUpgradeState",
        "",
        "uuid",
        "",
        "info",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
        "state",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;",
        "extraInfo",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;",
        "onUpgradeProgress",
        "progress",
        "",
        "curIndex",
        "total",
        "onUpgradeState",
        "stateModel",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V
    .locals 1

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->getState()I

    move-result p3

    invoke-static {v0, p2, p1, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;->t(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/d$a;->a(Lcn/mucang/android/jiakaoyi/signal/k/g0/d;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V

    return-void
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V
    .locals 1

    const-string v0, "stateModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;->s(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    return-void
.end method

.method public d(III)V
    .locals 8

    const/16 p2, 0x28

    int-to-double p2, p2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;->o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;)I

    move-result v0

    const/16 v1, 0x14

    div-int/2addr v1, v0

    int-to-double v0, v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    int-to-double v4, p1

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    mul-double v0, v0, v2

    add-double/2addr p2, v0

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;

    double-to-float p2, p2

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;-><init>(F)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method
