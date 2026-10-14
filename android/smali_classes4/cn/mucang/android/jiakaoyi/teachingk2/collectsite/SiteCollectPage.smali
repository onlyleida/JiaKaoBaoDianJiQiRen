.class public Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;,
        Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private b:Lcn/mucang/android/jiakaoyi/signal/i/a;

.field public final c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field private h:Landroidx/recyclerview/widget/RecyclerView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;

.field private l:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;

.field private o:Z

.field private final p:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->a:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->k:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->m:Ljava/util/List;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->p:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->i(Landroid/view/View;)V

    return-void
.end method

.method private synthetic B()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/v/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/v/a;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->d:Ljava/lang/String;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->e:I

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/v/a;->n(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/i/b;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->gpsData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->gpsData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v6, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/p;

    invoke-direct {v3, p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/p;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v2, p0, v3}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private synthetic D(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->M(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private synthetic F()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->o:Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static H(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Type"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "examSiteId"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static I(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->H(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static J(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->H(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static K(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->H(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private L()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)V

    const-string v2, "\u6b63\u5728\u52a0\u8f7d\u6570\u636e..."

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private M(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->n:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->g:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    invoke-direct {v4, v2, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v4, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;->j(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->g:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v0, v0

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float p1, v1

    invoke-virtual {p2, v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    return-void
.end method

.method private N()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/o;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/o;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->l(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->g:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    return-object p0
.end method

.method private i(Landroid/view/View;)V
    .locals 7

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/k;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/k;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    if-nez v0, :cond_2

    .line 3
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u65b0\u5efa\u4e00\u4e2a\u7535\u5b50\u6805\u680f"

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "\u65b0\u5efa\u4e00\u4e2a\u7279\u6b8a\u533a\u57df"

    goto :goto_0

    :cond_1
    const-string v0, "\u65b0\u5efa\u4e00\u4e2a\u573a\u666f"

    goto :goto_0

    .line 4
    :goto_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/c;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->d:Ljava/lang/String;

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/q;

    invoke-direct {v6, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/q;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;Ljava/lang/Runnable;)V

    const-string v5, ""

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void

    .line 5
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private j(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->o:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    invoke-static {p1}, Lcn/mucang/android/core/utils/d;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    new-instance v9, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/l;

    invoke-direct {v5, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/n;

    invoke-direct {v7, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/n;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)V

    const/4 v8, 0x1

    const-string v2, "\u5f53\u524d\u6709\u6570\u636e\u672a\u4fdd\u5b58"

    const-string v3, "\u786e\u5b9a\u9000\u51fa?"

    const-string v4, "\u4e0d\u4fdd\u5b58\uff0c\u9000\u51fa"

    const-string v6, "\'\u4fdd\u5b58\u6570\u636e\u5e76\u9000\u51fa"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    invoke-direct {v0, p1, v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private k(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->gpsData:Ljava/util/List;

    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->gpsData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    const-string p1, "\u4e0d\u80fd\u5c11\u4e8e2\u4e2a\u70b9"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/b;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->l(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "\u8fd8\u6ca1\u5f00\u59cb\u91c7\u96c6\u65b0\u9879\u76ee"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private l(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/a;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;Ljava/lang/Runnable;)V

    const-string p1, "\u6b63\u5728\u4fdd\u5b58..."

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->k(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->j(Landroid/view/View;)V

    return-void
.end method

.method private synthetic o()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 5
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->gpsData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->g:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->k:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    :cond_2
    return-void
.end method

.method private synthetic q(Ljava/lang/Runnable;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->g:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-direct {v0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->k:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->g:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->o:Z

    .line 5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic s(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic u(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->N()V

    return-void
.end method

.method private synthetic w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->m:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->n:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->k:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->o:Z

    return-void
.end method

.method private synthetic y(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/v/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/v/a;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->e:I

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/v/a;->o(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;I)Z

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic C()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->B()V

    return-void
.end method

.method public synthetic E(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->D(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public synthetic G()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->F()V

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8003\u573a\u4fe1\u606f\u91c7\u96c6"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->o:Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->e:I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "examSiteId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->d:Ljava/lang/String;

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->activity_collect_site:I

    invoke-virtual {p0, v0}, Lcn/mucang/android/core/config/n;->setContentView(I)V

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/j;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->mapView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->g:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->itemList:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->collectPoint:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->i:Landroid/view/View;

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->finishItem:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->j:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->i:Landroid/view/View;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/m;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/m;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->j:Landroid/view/View;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->gps_info:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->f:Landroid/widget/TextView;

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->m:Ljava/util/List;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->e:I

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->p:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;-><init>(Ljava/util/List;ILcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->n:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->a:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->L()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->a:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public synthetic p()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->o()V

    return-void
.end method

.method public synthetic r(Ljava/lang/Runnable;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->q(Ljava/lang/Runnable;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V

    return-void
.end method

.method public synthetic t(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->s(Landroid/view/View;)V

    return-void
.end method

.method public synthetic v(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->u(Landroid/view/View;)V

    return-void
.end method

.method public synthetic x()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->w()V

    return-void
.end method

.method public synthetic z(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->y(Ljava/lang/Runnable;)V

    return-void
.end method
