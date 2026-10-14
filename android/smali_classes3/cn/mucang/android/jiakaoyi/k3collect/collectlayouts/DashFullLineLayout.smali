.class public final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;
.super Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u000cH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\u000cJ\u0008\u0010\u0018\u001a\u00020\u000cH\u0016J\u0008\u0010\u0019\u001a\u00020\u000cH\u0002J\u0008\u0010\u001a\u001a\u00020\u000cH\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;",
        "activity",
        "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
        "sourceData",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;",
        "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V",
        "binding",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;",
        "lineColor",
        "",
        "destroy",
        "",
        "fillData",
        "freezeEdit",
        "getSrcData",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;",
        "init",
        "Landroidx/viewbinding/ViewBinding;",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "mapView",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
        "initData",
        "refreshSrcData",
        "releaseView",
        "unFreezeEdit",
        "MapCollectK3_release"
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
.field private u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

.field private v:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    const/16 p1, -0x20bd

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->v:I

    return-void
.end method

.method public static final synthetic d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->w(Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V

    return-void
.end method

.method public static final synthetic f0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->v:I

    return-void
.end method

.method public static final synthetic g0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->t0()V

    return-void
.end method

.method private static final h0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mapView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->R(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    return-void
.end method

.method private static final i0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mapView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->Q(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    return-void
.end method

.method private static final j0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mapView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->T(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    return-void
.end method

.method private static final k0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mapView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->S(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    return-void
.end method

.method private static final l0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/R$drawable;->k3_caiji_shuanghuang:I

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$string;->shuanghuang:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity.getString(R.string.shuanghuang)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\u865a\u5b9e\u7ebf\u91c7\u96c6\u5b9e\u4f8b"

    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->A(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->k0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->j0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->i0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->h0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->l0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Landroid/view/View;)V

    return-void
.end method

.method private final s0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->J()V

    return-void
.end method

.method private final t0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public U()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->Y()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0xf

    .line 5
    :goto_1
    iput v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->g()Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getShapeTypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->v:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    return-void

    :cond_2
    const-string v0, "binding"

    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->J()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->q()V

    return-void
.end method

.method public j()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/view/LayoutInflater;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Landroidx/viewbinding/a;
    .locals 12

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->m0()V

    .line 3
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->y(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_b

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;->spShapeTypeList:Landroid/widget/Spinner;

    const-string v0, "binding.spShapeTypeList"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->g()Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getShapeTypes()Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 9
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getShapeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->d()I

    move-result v7

    .line 11
    new-instance v8, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$init$2;

    invoke-direct {v8, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$init$2;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    move-object v3, p0

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->n(Landroid/widget/Spinner;Landroid/view/LayoutInflater;Ljava/util/List;ILkotlin/jvm/b/l;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;->llColor:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->v:I

    const/16 v4, -0x20bd

    if-ne v0, v4, :cond_1

    const/4 v3, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 14
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    if-eqz v0, :cond_9

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;->spColors:Landroid/widget/Spinner;

    const-string v0, "binding.spColors"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u767d\u8272"

    const-string v3, "\u9ec4\u8272"

    .line 15
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object v4, p0

    move-object v6, p1

    .line 16
    invoke-static/range {v4 .. v11}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->m(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;Landroid/widget/Spinner;Landroid/view/LayoutInflater;Ljava/util/List;ILkotlin/jvm/b/l;ILjava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;->spColors:Landroid/widget/Spinner;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$a;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;->tvCollectStart1:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/z;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/z;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;->tvCollectEnd1:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/y;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/y;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;->tvCollectStart2:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/x;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/x;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;->tvCollectEnd2:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/w;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/w;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;->tvExample:Landroid/widget/TextView;

    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/a0;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/a0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->t0()V

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public final m0()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->DASH_FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->x(Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->g()Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;-><init>(I)V

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->Z(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->g()Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getShapeTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->V()Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->g()Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getShapeTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->V()Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->v(I)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->v:I

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->s0()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v0

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v0

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    return-void
.end method
