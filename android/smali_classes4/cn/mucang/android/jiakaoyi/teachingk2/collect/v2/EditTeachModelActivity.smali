.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0005H\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0014J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0013\u001a\u00020\u0011H\u0016J\u0008\u0010\u0014\u001a\u00020\u0011H\u0014J\u0008\u0010\u0015\u001a\u00020\u0011H\u0014J\u0008\u0010\u0016\u001a\u00020\u0011H\u0014J\u0008\u0010\u0017\u001a\u00020\u0011H\u0002J\u0008\u0010\u0018\u001a\u00020\u0011H\u0002J\u0012\u0010\u0019\u001a\u00020\u00112\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;",
        "()V",
        "dataChanged",
        "",
        "mMoveStep",
        "",
        "mapPreviewer",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepMapPreviewer;",
        "model",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
        "relateModel",
        "checkMoveStepValid",
        "getStatName",
        "",
        "init",
        "",
        "initViewPager",
        "onBackPressed",
        "onDestroy",
        "onPause",
        "onResume",
        "saveModel",
        "sendData",
        "setRelationPoint",
        "normal",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
        "Companion",
        "TeachingK2_release"
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
.field public static final g:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$a;


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

.field private c:Z

.field private d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->g:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->f:I

    return-void
.end method

.method public static synthetic A(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->n(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic E(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->J(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->M(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;)V

    return-void
.end method

.method public static synthetic I(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->t(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final J(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private final K()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    const-string v2, "\u6b63\u5728\u4fdd\u5b58..."

    const-string v3, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final L(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->v(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->v(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    :cond_0
    const-string v0, "\u66f4\u65b0\u6210\u529f"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/r0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/r0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final M(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->c:Z

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method private final N()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->c:Z

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->c()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v2, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->c()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->order:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->order:I

    :goto_2
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method private final O(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->i()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz v2, :cond_5

    .line 4
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    iget-wide v8, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    cmp-long v10, v4, v8

    if-nez v10, :cond_3

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v1

    .line 6
    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    goto :goto_3

    .line 7
    :cond_5
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    iget-wide v8, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    cmp-long v10, v4, v8

    if-nez v10, :cond_6

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v1

    .line 9
    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    :cond_8
    :goto_3
    if-nez v1, :cond_9

    goto :goto_4

    .line 10
    :cond_9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    :goto_4
    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->N()V

    return-void
.end method

.method private final k()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->moveEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u8bbe\u7f6e\u79fb\u52a8\u6b65\u957f"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->f:I

    const/4 v0, 0x1

    return v0
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->onBackPressed()V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->N()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->f:I

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

    if-nez v2, :cond_1

    :goto_1
    move-object v2, v1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;->c()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    :goto_2
    const/4 v3, 0x1

    invoke-static {v3, p1, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/o3/a;->a(ZILcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v1

    :goto_3
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->O(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 3
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->c:Z

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    new-array v0, v3, [Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {p1, v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;->k(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->f:I

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

    if-nez v2, :cond_1

    :goto_1
    move-object v2, v1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;->c()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    :goto_2
    const/4 v3, 0x0

    invoke-static {v3, p1, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/o3/a;->a(ZILcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v1

    :goto_3
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->O(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->c:Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    new-array p1, p1, [Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    aput-object v1, p1, v3

    invoke-static {p1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;->k(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->c:Z

    if-nez p1, :cond_0

    const-string p0, "\u6682\u65e0\u4fee\u6539\uff0c\u65e0\u9700\u4fdd\u5b58"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->K()V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Ljava/lang/Boolean;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/4 v1, 0x0

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->c()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    aput-object v3, v0, v1

    invoke-static {v0}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->c()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;->k(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    .line 2
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->d()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;->m(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;)V

    .line 3
    :goto_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->g()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->c()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez p1, :cond_4

    goto :goto_3

    .line 5
    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x3dcccccd    # 0.1f

    goto :goto_2

    :cond_5
    const v1, 0x3e4ccccd    # 0.2f

    :goto_2
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v0, v0

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float p1, v1

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->v(FF)V

    :cond_6
    :goto_3
    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->c:Z

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->variableTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, p1, [Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;->k(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final s()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->variableTab:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->formTab:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->errorTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$b;

    invoke-direct {v3, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$b;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$c;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->variableTab:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->formTab:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/u0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/u0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->errorTab:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/i0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/i0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private static final v(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->u(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->L(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->v(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6559\u5b66\u70b9\u7f16\u8f91"

    return-object v0
.end method

.method protected init()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->c()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "\u6682\u65e0\u6559\u5b66\u70b9\u6570\u636e"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->g()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->isGlobal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->moveGroup:Landroidx/constraintlayout/widget/Group;

    const-string v2, "viewBinding.moveGroup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->errorTab:Landroid/widget/TextView;

    const-string v3, "viewBinding.errorTab"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->moveEt:Landroid/widget/EditText;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->cancelTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->moveForward:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/o0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/o0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->moveBack:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->saveTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/s0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/s0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const-string v2, "viewBinding.map"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

    if-nez v0, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->i()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->i()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/p0;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/p0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;->d(IILcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 19
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->s()V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;

    .line 20
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/t0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/t0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 21
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$init$8;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$init$8;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5f53\u524d\u6709\u672a\u4fdd\u5b58\u5185\u5bb9\uff0c\u662f\u5426\u786e\u8ba4\u9000\u51fa\uff1f"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u53d6\u6d88"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;)V

    const-string v2, "\u76f4\u63a5\u9000\u51fa"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n()V

    return-void
.end method
