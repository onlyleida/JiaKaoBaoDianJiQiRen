.class public final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;
.super Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0018\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0006\u0010\u001c\u001a\u00020\u0015J\u0008\u0010\u001d\u001a\u00020\u0015H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;",
        "activity",
        "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
        "sourceData",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;",
        "type",
        "",
        "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V",
        "binding",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;",
        "lineColor",
        "getLineColor",
        "()I",
        "setLineColor",
        "(I)V",
        "singleLineSrcData",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;",
        "title",
        "",
        "fillData",
        "",
        "freezeEdit",
        "init",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "mapView",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
        "initData",
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
.field public static final w:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout$a;

.field private static x:I = 0xf


# instance fields
.field private s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

.field private final t:Ljava/lang/String;

.field private u:I

.field private final v:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->w:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout$a;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V

    const/4 p1, 0x3

    if-eq p3, p1, :cond_2

    const/4 p1, 0x4

    if-eq p3, p1, :cond_1

    const/16 p1, 0xc

    if-eq p3, p1, :cond_0

    const-string p1, "\u5b9e\u7ebf\u91c7\u96c6\u793a\u4f8b"

    goto :goto_0

    :cond_0
    const-string p1, "\u4e2d\u5fc3\u5708\u5b9e\u7ebf\u91c7\u96c6\u793a\u4f8b"

    goto :goto_0

    :cond_1
    const-string p1, "\u975e\u673a\u52a8\u8f66\u9053\u7ebf\u91c7\u96c6\u793a\u4f8b"

    goto :goto_0

    :cond_2
    const-string p1, "\u6700\u53f3\u4fa7\u8f66\u9053\u5b9e\u7ebf\u91c7\u96c6\u793a\u4f8b"

    .line 3
    :goto_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->t:Ljava/lang/String;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->u:I

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    sget p2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->x:I

    const/4 v0, 0x0

    invoke-direct {p1, p3, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;-><init>(IIZ)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->v:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    return-void
.end method

.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;IILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V

    return-void
.end method

.method public static final synthetic b0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->P()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->R()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->w(Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V

    return-void
.end method

.method private static final g0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mapView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout$init$3$1;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout$init$3$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 3
    invoke-direct {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;-><init>(Landroid/content/Context;Lkotlin/jvm/b/p;)V

    .line 4
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final h0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->M()V

    return-void
.end method

.method private static final i0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->L()V

    return-void
.end method

.method private static final j0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/R$drawable;->k3_caiji_full:I

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$string;->caiji_tip_common:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity.getString(R.string.caiji_tip_common)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->t:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->A(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->g0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->h0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->j0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->i0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public N()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

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
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->x:I

    .line 5
    :goto_1
    iput v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineWidth:I

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineWidth:I

    sput v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->x:I

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->u:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineColor:I

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->V()V

    return-void

    :cond_2
    const-string v0, "binding"

    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public O()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->N()V

    return-void

    .line 4
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public a0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

    sget v3, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->x:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

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

.method public f0(Landroid/view/LayoutInflater;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;
    .locals 13

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->k0()V

    .line 3
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->y(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_11

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->spShapeTypeList:Landroid/widget/Spinner;

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
    new-instance v8, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout$init$2;

    invoke-direct {v8, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout$init$2;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    move-object v3, p0

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->n(Landroid/widget/Spinner;Landroid/view/LayoutInflater;Ljava/util/List;ILkotlin/jvm/b/l;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isCurve:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->K0(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->tvMove:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->tvMove:Landroid/widget/TextView;

    new-instance v5, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/f0;

    invoke-direct {v5, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/f0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->tvMove:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->U()I

    move-result v0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_8

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->U()I

    move-result v0

    const/4 v5, 0x4

    if-eq v0, v5, :cond_8

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->U()I

    move-result v0

    const/16 v5, 0xc

    if-ne v0, v5, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->u:I

    const/16 v5, -0x20bd

    if-ne v0, v5, :cond_5

    const/4 v3, 0x1

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    .line 19
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz v0, :cond_7

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->spColors:Landroid/widget/Spinner;

    const-string v0, "binding.spColors"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u767d\u8272"

    const-string v3, "\u9ec4\u8272"

    .line 20
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x0

    move-object v5, p0

    move-object v7, p1

    .line 21
    invoke-static/range {v5 .. v12}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->m(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;Landroid/widget/Spinner;Landroid/view/LayoutInflater;Ljava/util/List;ILkotlin/jvm/b/l;ILjava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->spColors:Landroid/widget/Spinner;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout$b;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout$b;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_4

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_8
    :goto_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->spColors:Landroid/widget/Spinner;

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->tvColor:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :goto_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->tvCollectStart:Landroid/widget/TextView;

    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/g0;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/g0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->tvCollectEnd:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->tvCollectEnd:Landroid/widget/TextView;

    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/i0;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/i0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;->tvExample:Landroid/widget/TextView;

    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/h0;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/h0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->a0()V

    .line 31
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    if-eqz p1, :cond_9

    return-object p1

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

    .line 34
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_11
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic k(Landroid/view/LayoutInflater;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Landroidx/viewbinding/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->f0(Landroid/view/LayoutInflater;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;

    move-result-object p1

    return-object p1
.end method

.method public final k0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->v:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->W(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->CENTRAL_CIRCLE_FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->NON_MOTOR_VEHICLE_FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->KEEP_ASIDE_FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->x(Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineColor:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->u:I

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->g()Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getShapeTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->S()Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->g()Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getShapeTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->S()Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 11
    :goto_1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->v(I)V

    return-void
.end method

.method public final p0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;->u:I

    return-void
.end method
