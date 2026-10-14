.class public final Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0002J&\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u000c\u0010\u0016\u001a\u00020\u0015*\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "collectItems",
        "",
        "Lcn/mucang/android/jiakaoyi/k3collect/model/MultilaneCollectItem;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;",
        "checkCollectFinish",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "save",
        "",
        "notifyAdapter",
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


# instance fields
.field private final a:Lcom/drakeet/multitype/f;

.field private b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/i0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->a:Lcom/drakeet/multitype/f;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->c:Ljava/util/List;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->c:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->x(Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;)V

    return-void
.end method

.method private final B()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v2, "examSiteId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;

    .line 5
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->c()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "collectItem.gpsList1"

    const/4 v9, 0x2

    if-ne v5, v9, :cond_5

    .line 6
    new-instance v5, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->d()I

    move-result v10

    invoke-direct {v5, v10}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;-><init>(I)V

    .line 7
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->a()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-gt v10, v9, :cond_3

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->b()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 8
    :cond_3
    :goto_2
    iput-boolean v6, v5, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    if-eqz v6, :cond_4

    .line 9
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->a()Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    .line 10
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->b()Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    .line 11
    :cond_4
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->a()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v6, v5, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 12
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->b()Ljava/util/List;

    move-result-object v6

    const-string v7, "collectItem.gpsList2"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v6, v5, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 13
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->a()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/collections/s;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v6, v5, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 14
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->b()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/collections/s;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v4, v5, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 15
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 16
    :cond_5
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->c()I

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    .line 17
    :goto_3
    new-instance v10, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->d()I

    move-result v11

    invoke-direct {v10, v11, v5}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;-><init>(IZ)V

    .line 18
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    iput-boolean v6, v10, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isCurve:Z

    if-eqz v6, :cond_8

    .line 19
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->a()Ljava/util/List;

    move-result-object v5

    iput-object v5, v10, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    .line 20
    :cond_8
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->a()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v5, v10, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 21
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/collections/s;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v4, v10, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 22
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 23
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;

    invoke-direct {v7, v2, v0, p0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;-><init>(Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Lkotlin/coroutines/c;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_a
    return-void
.end method

.method public static final synthetic r(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->c:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic s(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->x(Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;)V

    return-void
.end method

.method private final t()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->c:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_5

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;

    .line 3
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->d()I

    move-result v2

    const/16 v5, 0x7b2c

    if-gtz v2, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u8f66\u9053\u7ebf\u5bbd\u4e0d\u7b26\u5408\u8981\u6c42"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->c()I

    move-result v2

    const-string v6, "\u8f66\u9053\u6709\u672a\u5b8c\u6210\u7684\u91c7\u96c6\u70b9"

    const/4 v7, 0x2

    if-ne v2, v7, :cond_2

    .line 6
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v7, :cond_1

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v7, :cond_3

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v1

    .line 8
    :cond_2
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v7, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    goto/16 :goto_0

    .line 9
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v1

    .line 10
    :cond_5
    invoke-static {}, Lkotlin/collections/s;->t()V

    const/4 v0, 0x0

    throw v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->y(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->A(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->z(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Landroid/view/View;)V

    return-void
.end method

.method private final x(Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->a:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;->etMultilaneCount:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->a:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final y(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->B()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;

    move-result-object p1

    const-string p2, "inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;

    const/4 p2, 0x0

    const-string p3, "viewBinding"

    if-eqz p1, :cond_4

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v1, Landroidx/recyclerview/widget/d;

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->a:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->c:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->a:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/ui/g;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$onCreateView$1$1;

    invoke-direct {v2, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$onCreateView$1$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;)V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/ui/g;-><init>(Lkotlin/jvm/b/p;)V

    .line 10
    const-class v2, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->a:Lcom/drakeet/multitype/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 12
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->x(Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;)V

    .line 13
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;->back:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/ui/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/ui/a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;->save:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/ui/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/ui/c;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;->imgAdd:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/ui/b;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/ui/b;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;->etMultilaneCount:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "\u591a\u8f66\u9053\u91c7\u96c6\u7ebf\u6bb5\u8ddd\u79bb\u6700\u957f\u53ea\u80fd50\u7c73"

    invoke-static {p1, v0}, Lf/a/a/e/a/d/a;->a(Landroid/view/View;Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 18
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_3
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_4
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method
