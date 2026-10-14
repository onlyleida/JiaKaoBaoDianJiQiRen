.class public final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;
.super Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0006\u0010\u001b\u001a\u00020\u0010J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001dH\u0016J\u0008\u0010\u001f\u001a\u00020\u0010H\u0016J\u0008\u0010 \u001a\u00020\u0010H\u0002J\u0008\u0010!\u001a\u00020\u0010H\u0016J$\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020$2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100&H\u0016J\u0008\u0010\'\u001a\u00020\u0010H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/StopLineLayout;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;",
        "activity",
        "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
        "sourceData",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;",
        "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V",
        "binding",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;",
        "lineWidth",
        "",
        "getSourceData",
        "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;",
        "srcData",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;",
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
        "isDone",
        "",
        "isStart",
        "refreshSrcData",
        "releaseView",
        "removeCurrentLine",
        "saveCurrentLine",
        "examSiteId",
        "",
        "callback",
        "Lkotlin/Function1;",
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
.field private final h:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

.field private i:I

.field private j:Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;

.field private k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->h:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    const/16 p1, 0x28

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->i:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;-><init>(I)V

    invoke-virtual {v1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->i:I

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;-><init>(I)V

    .line 6
    :cond_1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    return-void
.end method

.method private final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->j:Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;->etLineWidth:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

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
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->i:I

    .line 5
    :goto_1
    iput v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->lineWidth:I

    return-void

    :cond_2
    const-string v0, "binding"

    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->j:Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;->etLineWidth:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->E()V

    return-void

    :cond_0
    const-string v0, "binding"

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private static final G(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mapView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->k()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->lineStart:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->F()V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->h()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->w(Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V

    const-string p1, "currentGps"

    .line 6
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method private static final H(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mapView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->k()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->lineStart:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_1

    const-string p1, "\u8d77\u70b9\u6ca1\u6709\u91c7\u96c6"

    .line 4
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->B(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->lineEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->h()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->w(Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 p2, 0x0

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->lineStart:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "srcData.lineStart"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->lineStart:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p1, p2

    invoke-static {p1}, Lkotlin/collections/s;->f([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->D(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static final I(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/R$drawable;->k3_caiji_stop:I

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$string;->caiji_tip_common:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity.getString(R.string.caiji_tip_common)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\u505c\u6b62\u7ebf\u91c7\u96c6\u793a\u4f8b"

    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->A(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic L(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->I(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic M(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->G(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->H(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V

    return-void
.end method

.method private final O()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->P()V

    return-void
.end method

.method private final P()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->j:Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;->etLineWidth:Landroidx/appcompat/widget/AppCompatEditText;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->i:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->j:Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;->etLineWidth:Landroidx/appcompat/widget/AppCompatEditText;

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
.method public final J()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->STOP_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->x(Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->lineWidth:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->i:I

    return-void
.end method

.method public K()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->lineStart:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "\u8d77\u70b9\u6ca1\u6709\u91c7\u96c6"

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->B(Ljava/lang/String;)V

    return v2

    .line 3
    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->lineEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v0, :cond_1

    const-string v0, "\u7ec8\u70b9\u6ca1\u6709\u91c7\u96c6"

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->B(Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->q()V

    return-void
.end method

.method public j()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    return-object v0
.end method

.method public k(Landroid/view/LayoutInflater;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Landroidx/viewbinding/a;
    .locals 3

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->j:Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->J()V

    .line 3
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->y(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->P()V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->h()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->w(Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->j:Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;->tvCollectStart:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/h1;

    invoke-direct {v2, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/h1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->j:Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;->tvCollectEnd:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/i1;

    invoke-direct {v2, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/i1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->j:Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;->tvExample:Landroid/widget/TextView;

    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/g1;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/g1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->j:Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->lineStart:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->lineEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public q()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->O()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 3
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->lineStart:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->lineEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->h()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->i()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->f(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-super {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->r(Ljava/lang/Long;)V

    return-void
.end method

.method public u(JLkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->E()V

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;->k:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->t(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lkotlin/jvm/b/l;)V

    :cond_0
    return-void
.end method
