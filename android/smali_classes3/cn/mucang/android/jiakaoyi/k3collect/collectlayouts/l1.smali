.class public final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;
.super Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\rJ\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0019H\u0016J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u0010\u001e\u001a\u00020\rH\u0016J\u0008\u0010\u001f\u001a\u00020\rH\u0002J\u0008\u0010 \u001a\u00020\rH\u0016J$\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020#2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\r0%H\u0016J\u0008\u0010&\u001a\u00020\rH\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/JudgeLineLayout;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;",
        "activity",
        "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
        "sourceData",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;",
        "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V",
        "binding",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;",
        "getSourceData",
        "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;",
        "srcData",
        "destroy",
        "",
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
        "onCollectClick",
        "index",
        "",
        "refreshSrcData",
        "releaseView",
        "removeCurrentLine",
        "saveCurrentLine",
        "examSiteId",
        "",
        "callback",
        "Lkotlin/Function1;",
        "tip",
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

.field private i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

.field private j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->h:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    const/16 p1, 0xd

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;-><init>(I)V

    .line 4
    :cond_1
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    return-void
.end method

.method private final E()V
    .locals 0

    return-void
.end method

.method private static final F(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->W(I)V

    return-void
.end method

.method private static final G(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->W(I)V

    return-void
.end method

.method private static final H(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->W(I)V

    return-void
.end method

.method private static final I(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->W(I)V

    return-void
.end method

.method private static final J(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-static {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->c(ZZZ)I

    move-result p1

    iput p1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 4
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->b(I)V

    return-void
.end method

.method private static final K(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    .line 4
    invoke-static {p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->c(ZZZ)I

    move-result p1

    .line 5
    iput p1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 6
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->b(I)V

    return-void
.end method

.method private static final L(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-static {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->c(ZZZ)I

    move-result p1

    iput p1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 4
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->b(I)V

    return-void
.end method

.method private static final M(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/R$drawable;->k3_caiji_judge_line:I

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$string;->judge_line:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity.getString(R.string.judge_line)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\u8bc4\u5224\u63a7\u5236\u7ebf\u91c7\u96c6\u793a\u4f8b"

    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->A(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic O(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->J(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic P(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->G(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->F(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->H(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->M(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->I(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->L(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic V(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->K(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private final W(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->k()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_2

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x70b9

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u6ca1\u6709\u91c7\u96c6"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->B(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p1, :cond_3

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->E()V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->h()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->i()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v2

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->w(Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V

    const-string p1, "currentGps"

    .line 12
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method private final X()V
    .locals 0

    return-void
.end method

.method private final Y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 2
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x70b9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6ca1\u6709\u91c7\u96c6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->B(Ljava/lang/String;)V

    return-void

    :cond_1
    if-le v2, v1, :cond_2

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    :goto_1
    const-string v0, "\u9700\u8981\u91c7\u96c64\u4e2a\u70b9"

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->B(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public N()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v2, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->q()V

    return-void
.end method

.method public j()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    return-object v0
.end method

.method public k(Landroid/view/LayoutInflater;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Landroidx/viewbinding/a;
    .locals 4

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->y(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    const/4 p2, 0x0

    const-string v0, "binding"

    if-eqz p1, :cond_13

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->tvCollect1:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/q0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/q0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_12

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->tvCollect2:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->tvCollect3:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/r0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/r0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->tvCollect4:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/t0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/t0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    const/16 v2, 0x80

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 8
    invoke-static {v1, v1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->c(ZZZ)I

    move-result v1

    iput v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->b(I)V

    goto/16 :goto_0

    :cond_0
    const/16 p1, 0x9

    .line 10
    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->c(ZZZ)I

    move-result v2

    iput v2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->checkBox1:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->checkBox2:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->checkBox3:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->b(I)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->checkBox1:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->checkBox2:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->checkBox3:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    .line 23
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->checkBox1:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->checkBox2:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->checkBox3:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->c(ZZZ)I

    move-result v1

    .line 24
    iput v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->b(I)V

    .line 26
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->checkBox1:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/o0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/o0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 27
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->checkBox2:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/v0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/v0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->checkBox3:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/u0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/u0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 29
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;->tvExample:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/s0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/s0;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->i:Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 31
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 32
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 33
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 35
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 36
    :cond_d
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 37
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 39
    :cond_10
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 40
    :cond_11
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 41
    :cond_12
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 42
    :cond_13
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public o()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public q()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->X()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->h()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->i()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->f(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->j:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->t(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lkotlin/jvm/b/l;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;->Y()V

    :goto_0
    return-void
.end method
