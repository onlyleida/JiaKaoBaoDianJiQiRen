.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0014J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0007H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;",
        "()V",
        "layer",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarCollectLayer;",
        "model",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;",
        "getModel",
        "()Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;",
        "model$delegate",
        "Lkotlin/Lazy;",
        "getStatName",
        "",
        "init",
        "",
        "refreshMap",
        "it",
        "Companion",
        "mapcollect_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity$a;


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;

.field private final c:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->d:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity$model$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity$model$2;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->c:Lkotlin/f;

    return-void
.end method

.method private final j()Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    return-object v0
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->p(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->k(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->q(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;)V

    return-void
.end method

.method private final o(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/f;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/f;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;)V
    .locals 14

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v1

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v2

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    const/16 v2, 0x64

    int-to-double v6, v2

    mul-double v4, v4, v6

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v2

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v4, v4, v8

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v2

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    mul-double v8, v8, v6

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v2

    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v8, v8, v6

    .line 8
    invoke-virtual {v3, v4, v5, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->generateCarData()Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    move-result-object v3

    .line 10
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v2

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object p0

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->pitch:D

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 13
    invoke-virtual/range {v3 .. v13}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->update(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDDLcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;D)Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    .line 15
    new-instance p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/h;

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/h;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;)V

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$carPos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->n(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    .line 2
    :goto_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const-wide v1, 0x4066800000000000L    # 180.0

    const-wide v3, 0x407cc00000000000L    # 460.0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-static {v1, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/16 v1, -0x5a

    int-to-double v1, v1

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-nez v0, :cond_2

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;->infoTv:Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5de6\u524d\u8f6e\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontOffset:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u53f3\u524d\u8f6e\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontOffset:D

    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u5de6\u540e\u8f6e\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackOffset:D

    .line 14
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u53f3\u540e\u8f6e\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackOffset:D

    .line 16
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u524d\u6321\u98ce\u8ddd\u79bb\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->frontDistance:D

    .line 18
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u540e\u6321\u98ce\u8ddd\u79bb\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->backDistance:D

    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u8f66\u8eab\u9ad8\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosHeight:D

    .line 22
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8f66\u8eab\u6570\u636e\u9884\u89c8"

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->j()Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u8f66\u8eab\u6570\u636e\u9519\u8bef"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;->title:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u8f66\u8eab\u6570\u636e\u9884\u89c8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;->title:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/g;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/g;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->j()Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->o(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    :goto_0
    return-void
.end method
