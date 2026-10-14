.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;,
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcn/mucang/android/jiakaoyi/signal/i/a;

.field private final c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

.field private d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field private final g:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroidx/recyclerview/widget/RecyclerView;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->e:Ljava/util/Map;

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/l0;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/l0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 5
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    .line 6
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    .line 7
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p3, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$a;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    .line 9
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-wide p1, p4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->r(J)V

    return-void
.end method

.method private synthetic A(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->o(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    const/4 v0, 0x0

    const-string v1, "\u6b63\u5728\u5220\u9664..."

    invoke-static {p3, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p3

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/app/ProgressDialog;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic C(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->giveOnePointToCalZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->canTurnOrientation()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->i(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method private synthetic E(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "\u66f4\u6539\u6210\u529f"

    .line 3
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->p()Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->R(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic G(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u590d\u5236\u66f4\u6539\u6210\u529f"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u590d\u5236\u66f4\u6539\u5931\u8d25"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic I(Lcn/mucang/android/jiakaoyi/engine/model/Step;ZLcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/d;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p1, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/d;->b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    .line 5
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    .line 7
    :cond_2
    invoke-interface {p1, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/d;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    .line 8
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dataAction\u53ef\u80fd\u4e3a\u7a7a, size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->e:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method static synthetic K(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic L(Landroid/app/ProgressDialog;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic M(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/d;

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/d;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic O(Landroid/app/ProgressDialog;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic P(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/app/ProgressDialog;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/i/g;->u(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v;

    invoke-direct {v0, p0, p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y;

    invoke-direct {p1, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y;-><init>(Landroid/app/ProgressDialog;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    const-string p2, "\u5220\u9664\u5931\u8d25"

    .line 7
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const-string p2, "TAG"

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5220\u9664\u5931\u8d25 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y;

    invoke-direct {p1, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y;-><init>(Landroid/app/ProgressDialog;)V

    :goto_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y;

    invoke-direct {p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y;-><init>(Landroid/app/ProgressDialog;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    throw p1
.end method

.method private R(JLjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    .line 3
    invoke-interface {v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->giveOnePointToCalZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v7, :cond_1

    .line 5
    iget-wide v8, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    add-double/2addr v5, v8

    .line 6
    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    add-double/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    int-to-double v1, v2

    div-double/2addr v3, v1

    div-double/2addr v5, v1

    .line 7
    new-instance v7, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v7}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    const-wide/16 v14, 0x0

    move-wide/from16 v8, p1

    move-wide v10, v3

    move-wide v12, v5

    invoke-virtual/range {v7 .. v15}, Lcn/mucang/jiakaoyi/uilib/i/g;->v(JDDD)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-wide v3, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    .line 9
    iput-wide v5, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    .line 10
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v4, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    cmp-long v6, v1, v4

    if-nez v6, :cond_3

    .line 12
    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->r(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    return-void
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    return-void
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    return-void
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    return-object p0
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->q(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object p0
.end method

.method private i(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;",
            ">(",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a:Ljava/util/List;

    sget-object p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/m0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/m0;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a\u66f4\u6539\u65b9\u5411?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/o0;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/o0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    const-string p1, "\u786e\u5b9a"

    .line 2
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a\u590d\u5236\u5e76\u66f4\u6539\u65b9\u5411?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c0;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    const-string p1, "\u786e\u5b9a"

    .line 2
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a\u5220\u9664?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    const-string p1, "\u5220\u9664"

    .line 2
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const-string v0, "\u4e0d\u5220\u9664"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private n(Lcn/mucang/android/jiakaoyi/engine/model/Step;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    .line 4
    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_1
    const/16 v1, 0x64

    if-ge p1, v1, :cond_4

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return p1

    :cond_4
    return v3
.end method

.method private o(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->stepId()I

    move-result p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p1

    return-object p1
.end method

.method private p(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z
    .locals 5

    .line 1
    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private q(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    .line 2
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private r(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->e:Ljava/util/Map;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->c()Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic t(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getTime()J

    move-result-wide v0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getTime()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private synthetic u(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/app/ProgressDialog;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v8, p5

    .line 1
    :try_start_0
    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v9, v2, v4

    if-lez v9, :cond_0

    .line 2
    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/b/a/a;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/b/a/a;-><init>()V

    iget-object v3, v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v9, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v2, v9, v10}, Lcn/mucang/android/jiakaoyi/mapcollect/b/a/a;->m(J)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v6

    .line 3
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    if-nez v3, :cond_1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p2

    invoke-direct {v7, v10}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->n(Lcn/mucang/android/jiakaoyi/engine/model/Step;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {v0, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->setName(Ljava/lang/String;)V

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_1
    move-object/from16 v10, p2

    .line 7
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    .line 8
    invoke-interface {v11}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v11}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->createKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    invoke-interface {v11}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->createKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->createKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    invoke-interface {v11, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    :cond_4
    if-eqz v2, :cond_8

    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 14
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 16
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v6

    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    .line 17
    invoke-interface {v14}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->createKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 18
    invoke-interface {v14}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->createKey()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_7
    if-nez v13, :cond_5

    .line 19
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    .line 20
    :goto_3
    iget-object v3, v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    .line 21
    iget-object v3, v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v11, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    cmp-long v3, v11, v4

    if-gtz v3, :cond_9

    .line 22
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    iget-object v3, v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {v2, v3, v9}, Lcn/mucang/jiakaoyi/uilib/i/g;->n(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    .line 23
    iget-object v3, v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v4, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iput-wide v4, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    .line 24
    iget-wide v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-direct {v7, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->r(J)V

    goto :goto_4

    .line 25
    :cond_9
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    iget-object v4, v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {v3, v4}, Lcn/mucang/jiakaoyi/uilib/i/g;->u(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    if-eqz v2, :cond_a

    .line 26
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 27
    :cond_a
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->j()Z

    move-result v3

    if-nez v3, :cond_b

    .line 28
    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/b/a/a;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/mapcollect/b/a/a;-><init>()V

    iget-object v4, v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v4, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v3, v4, v5, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/b/a/a;->n(JLjava/util/List;)Z

    .line 29
    :cond_b
    :goto_4
    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-direct {v7, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->p(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 30
    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-direct {v7, v2, v3, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->R(JLjava/util/List;)V

    .line 31
    :cond_c
    new-instance v9, Lcn/mucang/jiakaoyi/uilib/r/a;

    iget-object v11, v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    new-instance v12, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n0;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move v4, v6

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/engine/model/Step;ZLcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-direct {v9, v11, v12}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v9}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w;

    invoke-direct {v0, v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w;-><init>(Landroid/app/ProgressDialog;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 33
    :try_start_1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    const-string v0, "\u64cd\u4f5c\u5931\u8d25"

    .line 34
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/r/a;

    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/k0;

    move-object/from16 v3, p4

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/k0;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-direct {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w;

    invoke-direct {v0, v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w;-><init>(Landroid/app/ProgressDialog;)V

    :goto_5
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w;

    invoke-direct {v1, v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w;-><init>(Landroid/app/ProgressDialog;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    throw v0
.end method

.method private synthetic w(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->turnOrientation()V

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p0;

    invoke-direct {p2, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->j(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private synthetic y(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->turnOrientation()V

    const/4 p2, 0x0

    .line 3
    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->setName(Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a0;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)V

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->j(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method


# virtual methods
.method public synthetic B(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->A(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic D(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->C(Ljava/util/List;)V

    return-void
.end method

.method public synthetic F(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->E(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic H(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->G(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic J(Lcn/mucang/android/jiakaoyi/engine/model/Step;ZLcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->I(Lcn/mucang/android/jiakaoyi/engine/model/Step;ZLcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public synthetic N(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->M(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    return-void
.end method

.method public synthetic Q(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->P(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/app/ProgressDialog;)V

    return-void
.end method

.method public j(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->o(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p1, "\u6ca1\u627e\u5230\u8fd9\u4e2a\u6b65\u9aa4"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    .line 5
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    const/4 v1, 0x0

    const-string v2, "\u6b63\u5728\u66f4\u65b0..."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v6

    .line 7
    new-instance v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/app/ProgressDialog;)V

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    :cond_0
    return-void
.end method

.method public synthetic v(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->u(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/app/ProgressDialog;)V

    return-void
.end method

.method public synthetic x(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->w(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic z(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->y(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Landroid/content/DialogInterface;I)V

    return-void
.end method
