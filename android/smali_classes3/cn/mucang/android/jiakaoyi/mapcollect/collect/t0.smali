.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$a;,
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;,
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData<",
        "TT;>;C:",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field private b:Landroid/view/View;

.field private final c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

.field public final d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

.field private final f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a<",
            "TT;TC;>;"
        }
    .end annotation
.end field

.field private g:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a<",
            "TT;TC;>;",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;

    .line 6
    const-class p1, Lcn/mucang/android/jiakaoyi/hpmap/model/a;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/j;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/j;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)V

    invoke-virtual {p1, p3, p2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/h;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/h;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)V

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->j(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    :cond_0
    return-void
.end method

.method private synthetic f(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u4fdd\u5b58\u6210\u529f!"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->d()V

    :cond_0
    return-void
.end method

.method private synthetic h(Lcn/mucang/android/jiakaoyi/hpmap/model/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->l()V

    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->g:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    invoke-interface {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$a;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d()V

    return-void
.end method


# virtual methods
.method public e(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic g(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->f(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic i(Lcn/mucang/android/jiakaoyi/hpmap/model/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->h(Lcn/mucang/android/jiakaoyi/hpmap/model/a;)V

    return-void
.end method

.method public synthetic k(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->j(Landroid/view/View;)V

    return-void
.end method

.method public l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    invoke-interface {v1, v2, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-void
.end method

.method public m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->g:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$a;

    return-void
.end method

.method public n(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/n;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/n;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/n;->r()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;->s()V

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->r()V

    .line 9
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;

    if-eqz v0, :cond_3

    .line 10
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;->s()V

    .line 11
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/y;

    if-eqz v0, :cond_4

    .line 12
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/y;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/y;->s()V

    .line 13
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;

    if-eqz v0, :cond_5

    .line 14
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;->t()V

    .line 15
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/q;

    if-eqz v0, :cond_6

    .line 16
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/q;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/q;->s()V

    .line 17
    :cond_6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->l()V

    return-void
.end method

.method public p(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->b:Landroid/view/View;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/k;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/k;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public q(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    return-void
.end method

.method public r(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/r;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/r;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ZhiJiaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ZhiJiaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/i/b;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/r;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ZhiJiaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ZhiJiaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    :cond_0
    return-void
.end method
