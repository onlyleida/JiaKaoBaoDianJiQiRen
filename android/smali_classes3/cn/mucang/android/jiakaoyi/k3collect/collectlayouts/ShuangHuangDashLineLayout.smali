.class public final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;
.super Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u000cH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\u000cJ\u0006\u0010\u0018\u001a\u00020\u0019J\u0008\u0010\u001a\u001a\u00020\u000cH\u0016J\u0008\u0010\u001b\u001a\u00020\u000cH\u0002J\u0008\u0010\u001c\u001a\u00020\u000cH\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;",
        "activity",
        "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
        "sourceData",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;",
        "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V",
        "binding",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;",
        "defaultSrcData",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;",
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
        "isCurve",
        "",
        "refreshSrcData",
        "releaseView",
        "unFreezeEdit",
        "Companion",
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


# static fields
.field public static final w:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout$a;

.field private static x:I = 0xf


# instance fields
.field private u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;

.field private final v:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->w:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout$a;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    sget p2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->x:I

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;-><init>(IZ)V

    const/16 p2, 0xf

    .line 3
    iput p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    .line 4
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->v:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    return-void
.end method

.method public static final synthetic e0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->w(Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V

    return-void
.end method

.method public static final synthetic g0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->t0()V

    return-void
.end method

.method private static final h0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mapView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->R(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    return-void
.end method

.method private static final i0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mapView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->Q(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    return-void
.end method

.method private static final j0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mapView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->T(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    return-void
.end method

.method private static final k0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mapView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->S(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    return-void
.end method

.method private static final l0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/R$drawable;->k3_caiji_shuanghuang_dash:I

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$string;->shuanghuang:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity.getString(R.string.shuanghuang)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\u53cc\u9ec4\u7ebf\u91c7\u96c6\u793a\u4f8b"

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->A(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->j0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->h0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->l0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->i0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->k0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V

    return-void
.end method

.method private final s0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->J()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->t0()V

    return-void
.end method

.method private final t0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

    sget v3, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->x:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public U()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

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

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 4
    :cond_1
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->x:I

    .line 5
    :goto_1
    iput v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    sput v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->x:I

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->Z()V

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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->q()V

    return-void
.end method

.method public j()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/view/LayoutInflater;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Landroidx/viewbinding/a;
    .locals 9

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->m0()V

    .line 3
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->y(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_7

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;->spShapeTypeList:Landroid/widget/Spinner;

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
    new-instance v8, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout$init$2;

    invoke-direct {v8, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout$init$2;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    move-object v3, p0

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->n(Landroid/widget/Spinner;Landroid/view/LayoutInflater;Ljava/util/List;ILkotlin/jvm/b/l;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;->tvCollectStart1:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/x0;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/x0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;->tvCollectEnd1:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/z0;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/z0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;->tvCollectStart2:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/w0;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/w0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;->tvCollectEnd2:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/a1;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/a1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;->tvExample:Landroid/widget/TextView;

    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/y0;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/y0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->t0()V

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->u:Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public final m0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->v:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->a0(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    sput v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->x:I

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->SHUANG_HUANG_DASH:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->x(Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->g()Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getShapeTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->g()Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getShapeTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->v(I)V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;->s0()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;->X()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v0

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    :cond_1
    return-void
.end method
