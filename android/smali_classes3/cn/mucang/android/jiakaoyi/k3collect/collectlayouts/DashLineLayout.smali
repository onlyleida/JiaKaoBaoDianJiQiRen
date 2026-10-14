.class public final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;
.super Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0006\u0010\u0016\u001a\u00020\u000fJ\u0008\u0010\u0017\u001a\u00020\u000fH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;",
        "activity",
        "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
        "sourceData",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;",
        "type",
        "",
        "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V",
        "binding",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;",
        "lineColor",
        "singleLineSrcData",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;",
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
.field public static final v:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$a;

.field private static w:I = 0xa


# instance fields
.field private s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

.field private final t:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->v:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$a;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V

    const/4 p1, 0x4

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-eq p3, p1, :cond_1

    const/16 p1, 0xa

    if-eq p3, p1, :cond_0

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->w:I

    invoke-direct {p1, p3, v1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;-><init>(IIZ)V

    .line 4
    sget p3, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->w:I

    iput p3, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineWidth:I

    .line 5
    iput p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineColor:I

    .line 6
    sget-object p3, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->w:I

    invoke-direct {p1, p3, v1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;-><init>(IIZ)V

    .line 8
    sget p3, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->w:I

    iput p3, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineWidth:I

    const/16 p3, -0x20bd

    .line 9
    iput p3, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineColor:I

    .line 10
    sget-object p3, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->w:I

    invoke-direct {p1, p3, v1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;-><init>(IIZ)V

    .line 12
    sget p3, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->w:I

    iput p3, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineWidth:I

    .line 13
    iput p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineColor:I

    .line 14
    sget-object p3, Lkotlin/v;->a:Lkotlin/v;

    .line 15
    :goto_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->t:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    .line 16
    iput p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->u:I

    return-void
.end method

.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;IILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V

    return-void
.end method

.method public static final synthetic b0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->P()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->R()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->w(Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V

    return-void
.end method

.method public static final synthetic f0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->u:I

    return-void
.end method

.method private static final h0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
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
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 3
    invoke-direct {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;-><init>(Landroid/content/Context;Lkotlin/jvm/b/p;)V

    .line 4
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final i0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->M()V

    return-void
.end method

.method private static final j0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->L()V

    return-void
.end method

.method private static final k0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const-string p1, "\u865a\u7ebf\u91c7\u96c6\u793a\u4f8b"

    goto :goto_0

    :cond_0
    const-string p1, "\u9053\u8def\u4e2d\u5fc3\u7ebf-\u865a\u7ebf\u91c7\u96c6\u793a\u4f8b"

    goto :goto_0

    :cond_1
    const-string p1, "\u975e\u673a\u52a8\u8f66\u9053\u865a\u7ebf\u91c7\u96c6\u793a\u4f8b"

    .line 2
    :goto_0
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/R$drawable;->k3_caiji_dash:I

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v1

    sget v2, Lcn/mucang/android/jiakaoyi/k3collect/R$string;->caiji_tip_common:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity.getString(R.string.caiji_tip_common)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->A(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->k0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->j0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->h0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->i0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public N()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

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
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->w:I

    .line 5
    :goto_1
    iput v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineWidth:I

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineWidth:I

    sput v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->w:I

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->u:I

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->N()V

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

    sget v3, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->w:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->etLineWidth:Landroid/widget/EditText;

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

.method public g0(Landroid/view/LayoutInflater;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;
    .locals 13

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->l0()V

    .line 3
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->y(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isCurve:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v4, "binding"

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->K0(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->tvMove:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->tvMove:Landroid/widget/TextView;

    new-instance v5, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/d0;

    invoke-direct {v5, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/d0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 7
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->tvMove:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz v0, :cond_10

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->spShapeTypeList:Landroid/widget/Spinner;

    const-string v0, "binding.spShapeTypeList"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->g()Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getShapeTypes()Ljava/util/ArrayList;

    move-result-object v0

    .line 11
    new-instance v8, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v0, v11}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 13
    check-cast v5, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 14
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getShapeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->d()I

    move-result v9

    .line 16
    new-instance v10, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$3;

    invoke-direct {v10, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$3;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    move-object v5, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->n(Landroid/widget/Spinner;Landroid/view/LayoutInflater;Ljava/util/List;ILkotlin/jvm/b/l;)V

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->U()I

    move-result v0

    if-eq v0, v11, :cond_8

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->U()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->u:I

    const/16 v5, -0x20bd

    if-ne v0, v5, :cond_5

    const/4 v1, 0x1

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    .line 19
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz v0, :cond_7

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->spColors:Landroid/widget/Spinner;

    const-string v0, "binding.spColors"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u767d\u8272"

    const-string v1, "\u9ec4\u8272"

    .line 20
    filled-new-array {v0, v1}, [Ljava/lang/String;

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
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->spColors:Landroid/widget/Spinner;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$b;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$b;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_4

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 23
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 24
    :cond_8
    :goto_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->spColors:Landroid/widget/Spinner;

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->tvColor:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :goto_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->tvCollectStart:Landroid/widget/TextView;

    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/e0;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/e0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->tvCollectEnd:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->tvCollectEnd:Landroid/widget/TextView;

    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/c0;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/c0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;->tvExample:Landroid/widget/TextView;

    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/b0;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/b0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->a0()V

    .line 31
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->s:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    if-eqz p1, :cond_9

    return-object p1

    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 32
    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 33
    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 34
    :cond_c
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 35
    :cond_d
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 36
    :cond_e
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 37
    :cond_f
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 38
    :cond_10
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 39
    :cond_11
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic k(Landroid/view/LayoutInflater;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Landroidx/viewbinding/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->g0(Landroid/view/LayoutInflater;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;

    move-result-object p1

    return-object p1
.end method

.method public final l0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->t:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->W(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineWidth:I

    sput v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->w:I

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineColor:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->u:I

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->DASH_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->CENTER_DASH_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->NON_MOTOR_VEHICLE_DASH_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    .line 8
    :goto_0
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->x(Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;)V

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

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 10
    :cond_2
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
