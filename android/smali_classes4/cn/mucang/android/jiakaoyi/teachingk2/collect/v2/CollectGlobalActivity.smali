.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0008H\u0002J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0008H\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0013H\u0014J\u0008\u0010\u001a\u001a\u00020\u0013H\u0014J\u0008\u0010\u001b\u001a\u00020\u0013H\u0014J\u0008\u0010\u001c\u001a\u00020\u0013H\u0014J\u0010\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0008H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000c0\u000bj\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000c`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "createModelList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
        "current",
        "layers",
        "Ljava/util/HashMap;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalLayer;",
        "Lkotlin/collections/HashMap;",
        "mapRender",
        "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;",
        "renderData",
        "Lcn/mucang/android/jiakaoyi/mapcollect/render/IRenderData;",
        "addTeachModel",
        "",
        "deleteTeachModel",
        "model",
        "editTeachModel",
        "getStatName",
        "",
        "init",
        "onDestroy",
        "onPause",
        "onResume",
        "selectTeachModel",
        "Companion",
        "GlobalTeachModelItem",
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
.field public static final h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$a;


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/drakeet/multitype/f;

.field private g:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->e:Ljava/util/HashMap;

    .line 4
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V

    .line 6
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 7
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 8
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->f:Lcom/drakeet/multitype/f;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->w(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->x(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    return-void
.end method

.method public static synthetic D(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->v(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    return-void
.end method

.method private final F(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->f:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->r(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->u(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)Lcom/drakeet/multitype/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->f:Lcom/drakeet/multitype/f;

    return-object p0
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-object p0
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->F(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method private final o()V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_0

    const-string v0, "\u6682\u65e0\u6709\u6548\u70b9\u4f4d"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->g:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getCollisions()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string v4, "list"

    .line 7
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 9
    instance-of v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    if-nez v5, :cond_4

    invoke-interface {v4, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "\u9879\u76ee\u5185\u4e0d\u53ef\u6253\u70b9"

    .line 10
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_5
    :goto_0
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 12
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-static {v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 13
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    .line 14
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    .line 15
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_6

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    goto :goto_1

    :cond_6
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    :goto_1
    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->direction:I

    iput v0, v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->direCarDot:I

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 17
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->g()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    const-wide/16 v4, 0x0

    .line 18
    invoke-static {v4, v5}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->examSiteId:Ljava/lang/String;

    .line 19
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->programmeId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 20
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    const/4 v2, 0x2

    .line 21
    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    .line 23
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 25
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    const-string v5, "\u64cd\u4f5c\u70b9"

    invoke-direct {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->sound(Z)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j;

    invoke-direct {v2, v0, p0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    const-string v0, "\u6b63\u5728\u6253\u70b9"

    const-string v3, "\u6253\u70b9\u5931\u8d25"

    invoke-virtual {v1, v2, v0, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    const-string v0, "renderData"

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 1

    const-string v0, "$model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$normalVariable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->n(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n;

    invoke-direct {v0, p1, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$normalVariable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->f:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-direct {v0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->e:Ljava/util/HashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;ILkotlin/jvm/internal/o;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method private final r(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/d;

    invoke-direct {v1, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V

    const-string p1, "\u6b63\u5728\u5220\u9664"

    const-string v2, "\u5220\u9664\u5931\u8d25"

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V
    .locals 1

    const-string v0, "$model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->o(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/c;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->f:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->Q(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;ILkotlin/jvm/internal/o;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method private final u(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/i3;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$editTeachModel$1;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$editTeachModel$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    .line 3
    invoke-direct {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/i3;-><init>(Landroid/content/Context;Lkotlin/jvm/b/l;)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final v(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private static final w(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->o()V

    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Ljava/lang/Boolean;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->d:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-direct {v2, v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->e:Ljava/util/HashMap;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->t(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->s(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5168\u5c40\u901a\u7528\u4e8b\u4ef6\u91c7\u96c6"

    return-object v0
.end method

.method protected init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->b()Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->d:Ljava/util/List;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->b()Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->g:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->f:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->f:Lcom/drakeet/multitype/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;->addTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const-string v2, "viewBinding.map"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;-><init>(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;->b(Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;

    .line 16
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;->a()Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    return-void

    :cond_1
    :goto_0
    const-string v0, "\u6682\u65e0\u5730\u56fe\u6570\u636e"

    .line 18
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->d()V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->k()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->l()V

    :goto_0
    return-void
.end method
