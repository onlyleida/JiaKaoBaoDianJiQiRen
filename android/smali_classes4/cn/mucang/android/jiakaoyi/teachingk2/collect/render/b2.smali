.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$g;,
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$e;,
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;,
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;,
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView;

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

.field private final c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

.field private final d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

.field private e:Z

.field private f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

.field private g:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

.field private h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

.field public final i:Ljava/lang/String;

.field private final j:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroidx/recyclerview/widget/g;

.field private m:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-direct {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;-><init>()V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    .line 3
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->j:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 4
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$b;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->k:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 5
    new-instance p3, Landroidx/recyclerview/widget/g;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/g$f;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->l:Landroidx/recyclerview/widget/g;

    const/4 p3, 0x0

    .line 6
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->m:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 7
    sget p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->itemList:I

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->i:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    .line 10
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

    sget p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->previewMap:I

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-direct {p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

    .line 11
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V

    const-string v0, "\u6b63\u5728\u52a0\u8f7d\u6570\u636e..."

    const-string v1, "\u6570\u636e\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {p2, p3, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V

    .line 13
    const-class p3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$e;

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 14
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/m;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/m;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V

    .line 15
    const-class p3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$g;

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 16
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/n;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/n;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V

    .line 17
    const-class p3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private synthetic A(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->o(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/r/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/w;

    invoke-direct {v2, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/w;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    invoke-direct {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic C(Ljava/lang/StringBuilder;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-direct {p2, p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/d0;

    invoke-direct {p3, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/d0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Ljava/lang/StringBuilder;)V

    const-string p1, "\u6b63\u5728\u5220\u9664"

    const-string v0, "\u5220\u9664\u5931\u8d25"

    invoke-virtual {p2, p3, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic E()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->h()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 4
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/OrderModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/OrderModel;-><init>()V

    .line 5
    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/OrderModel;->teachModelId:Ljava/lang/String;

    .line 6
    iget v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->position:I

    iput v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/OrderModel;->position:I

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->w(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollectTeachRender"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->l0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method private synthetic H(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->m()V

    return-void
.end method

.method private synthetic J(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/p;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/p;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->g(Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private synthetic L(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->m:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->i:Ljava/lang/String;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->m:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getStepAndPlayText()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->O(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "\u8bf7\u9009\u62e9\u6559\u5b66\u70b9"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic N(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->f(Ljava/util/List;)V

    return-void
.end method

.method private synthetic P(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->k(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->f(Ljava/util/List;)V

    return-void
.end method

.method private synthetic R(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->g(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V

    return-void
.end method

.method private synthetic T(Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p1, "\u6ca1\u6709\u8f93\u5165\u5185\u5bb9"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-static {p3}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 6
    :cond_1
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    new-instance p4, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {p4, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 p4, 0x1

    if-ne p1, p3, :cond_2

    iget p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-eq p3, p4, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    const/4 v0, 0x5

    if-eq p3, v0, :cond_3

    :cond_2
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, p3, :cond_4

    iget p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-ne p3, p4, :cond_4

    .line 8
    :cond_3
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    iget p4, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-static {p1, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->createDefaultFrameModel(II)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->f(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method private synthetic V(Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->i:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->m0()V

    const-string p1, "\u5220\u9664\u6210\u529f"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic X()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->m:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-object v0
.end method

.method private synthetic Z(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->j(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->f(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->d0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->p(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method private synthetic b0(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->u(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    return-void
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->n0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    return-void
.end method

.method private synthetic d0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->b:I

    invoke-virtual {v0, v1, v2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->d(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->l(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const-string p1, "\u65b9\u6848\u540d\u79f0\u91cd\u590d\uff0c\u4e0d\u80fd\u65b0\u589e"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->o0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    return-void
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    return-object p0
.end method

.method private synthetic f0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->p0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    return-object p0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    return-object p0
.end method

.method private synthetic h0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->h()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 5
    iget v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v4, v5, :cond_0

    .line 6
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    iget v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    iget v5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->b:I

    if-ne v4, v5, :cond_1

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isTraceTeach()Z

    move-result v4

    if-nez v4, :cond_0

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const-string v4, "0"

    .line 12
    iput-object v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    .line 13
    iget v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v6, 0x2

    if-ne v4, v5, :cond_7

    .line 14
    iput v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    .line 15
    iget v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    const/4 v4, 0x4

    if-ne v3, v6, :cond_4

    .line 16
    iput v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    goto :goto_1

    :cond_4
    const/4 v5, 0x5

    const/4 v7, 0x3

    if-ne v3, v7, :cond_5

    .line 17
    iput v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    goto :goto_1

    :cond_5
    if-ne v3, v4, :cond_6

    .line 18
    iput v6, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    goto :goto_1

    :cond_6
    if-ne v3, v5, :cond_3

    .line 19
    iput v7, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    goto :goto_1

    .line 20
    :cond_7
    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v4, v5, :cond_8

    .line 21
    iput v6, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    goto :goto_1

    .line 22
    :cond_8
    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v4, v5, :cond_3

    .line 23
    iput v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    goto :goto_1

    .line 24
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 26
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 27
    :cond_a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 29
    :cond_b
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->i:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->t(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 30
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->m0()V

    const-string p1, "\u540c\u6b65\u6210\u529f"

    .line 31
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->m:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-object p0
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->m:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-object p1
.end method

.method private synthetic j0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->n(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x18

    const/16 v2, 0xa

    .line 3
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    const/16 v1, 0x80

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxEms(I)V

    .line 6
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x800033

    .line 7
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setGravity(I)V

    .line 8
    new-instance p2, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-direct {p2, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u8f93\u5165\u8bed\u97f3\u63d0\u793a\u8bed:"

    invoke-virtual {p2, v1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p2

    .line 9
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/c$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    move-result-object p2

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/q;

    invoke-direct {v1, p0, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/q;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    const-string p1, "\u786e\u5b9a"

    .line 10
    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "\u53d6\u6d88"

    .line 11
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/c$a;->setCancelable(Z)Landroidx/appcompat/app/c$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->e:Z

    return p1
.end method

.method private l(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/x;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/x;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Ljava/lang/String;)V

    const-string p1, "\u6b63\u5728\u6dfb\u52a0"

    const-string p2, "\u6dfb\u52a0\u5931\u8d25"

    invoke-virtual {v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private l0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->g:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-void
.end method

.method private m()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u8bf7\u5148\u70b9\u51fb\u5f00\u59cb"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;->m()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "\u8bf7\u5c06\u8f66\u5f00\u5230\u67d0\u4e2a\u9879\u76ee\uff0c\u8fdb\u884c\u91c7\u96c6"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->g:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v1, :cond_2

    const-string v0, "\u8fd8\u6ca1\u751f\u6210\u6559\u5b66\u5185\u5bb9"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "\u5f53\u524d\u6570\u636e\u6ca1\u6709\u4fdd\u5b58\uff0c\u8bf7\u5148\u4fdd\u5b58\u6570\u636e\u6216\u53d6\u6d88"

    .line 8
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->g:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 10
    iget v2, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    const-wide/16 v2, 0x0

    .line 11
    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->examSiteId:Ljava/lang/String;

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->i:Ljava/lang/String;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->programmeId:Ljava/lang/String;

    .line 13
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v3, 0x1

    const-string v4, "\u9a76\u5165\u9879\u76ee"

    if-ne v0, v2, :cond_5

    .line 14
    iget v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    const-string v2, "\u53f3\u51fa\u5e93"

    const-string v5, "\u5de6\u5012\u5e93"

    const-string v6, "\u5de6\u51fa\u5e93"

    const-string v7, "\u53f3\u5012\u5e93"

    if-ne v0, v3, :cond_4

    .line 15
    filled-new-array {v4, v5, v2, v7, v6}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_4
    filled-new-array {v4, v7, v6, v5, v2}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_5
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_6

    const-string v0, "\u5012\u5165\u4fa7\u65b9"

    const-string v2, "\u9a76\u51fa\u4fa7\u65b9"

    .line 18
    filled-new-array {v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_7

    .line 19
    iput v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 20
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->q0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    goto :goto_1

    .line 21
    :cond_7
    new-instance v2, Landroidx/appcompat/app/c$a;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/s;

    invoke-direct {v3, p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/s;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    invoke-virtual {v2, v0, v3}, Landroidx/appcompat/app/c$a;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method

.method private m0()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->q(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u8f7d\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CollectTeachRender"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-static {v1}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/y;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/y;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Ljava/util/List;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private n(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    const-string v0, "\u91c7\u96c6\u6807\u51c6\u8f68\u8ff9"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->h()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 4
    iget v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-ne v3, v4, :cond_0

    .line 5
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isTraceTeach()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->p(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->m:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return v2

    .line 9
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 11
    :cond_2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->f(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private n0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->h()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 4
    iget v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->b:I

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/y1;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->b:I

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->t(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/o;

    invoke-direct {v4, p0, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/o;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Ljava/lang/StringBuilder;)V

    invoke-direct {v0, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/y1;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/b/l;)V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_2
    const-string p1, "\u8bf7\u5148\u91c7\u96c6\u6559\u5b66"

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private o(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->e()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->g(Ljava/util/List;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->e:Z

    .line 5
    invoke-virtual {v0, v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->d(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V

    .line 6
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 9
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 10
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 13
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 14
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, v6, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 17
    invoke-virtual {v0, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 18
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v7, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v6, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 20
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 21
    invoke-virtual {v0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 22
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 23
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 24
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 25
    invoke-virtual {v0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 26
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 27
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 28
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 29
    invoke-virtual {v0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 30
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 31
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 32
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 33
    invoke-virtual {v0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 34
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 35
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 36
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QuKa:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 37
    invoke-virtual {v0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 38
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 39
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 40
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 41
    invoke-virtual {v0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 42
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 43
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 44
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ETC:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 45
    invoke-virtual {v0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 46
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 47
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 48
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    invoke-direct {v0, v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 49
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 50
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v5, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 51
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 52
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    invoke-direct {v0, v4, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 53
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 54
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 55
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v4, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 56
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    invoke-direct {v0, v6, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 57
    invoke-virtual {v0, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 58
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    .line 59
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0, v6, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 60
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 62
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->f()Ljava/util/List;

    move-result-object p1

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 65
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 66
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->p(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->m:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    :cond_1
    return-object p1
.end method

.method private o0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u540c\u6b65\u6b63\u5e93\u6559\u5b66\u4f1a\u8986\u76d6\u5f53\u524d\u7684\u6559\u5b66\u70b9\uff0c\u662f\u5426\u786e\u8ba4\u540c\u6b65\uff1f"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a0;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    const-string p1, "\u786e\u8ba4\u540c\u6b65"

    .line 2
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private p(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/v;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/v;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    const-string p1, "\u6b63\u5728\u5220\u9664\u6570\u636e..."

    const-string v2, "\u6570\u636e\u5220\u9664\u5931\u8d25"

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private p0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    const-string p1, "\u6b63\u5728\u540c\u6b65"

    const-string v2, "\u540c\u6b65\u5931\u8d25"

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/f;->h()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 4
    iget v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->b:I

    if-ne v3, v4, :cond_0

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c:Ljava/lang/String;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 8
    new-instance p1, Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v0, "\u662f\u5426\u786e\u8ba4\u5220\u9664\uff1f"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/t;

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/t;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Ljava/lang/StringBuilder;)V

    const-string v1, "\u786e\u8ba4"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u53d6\u6d88"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_2
    const-string p1, "\u5f53\u524d\u6ca1\u6709\u6559\u5b66\u70b9"

    .line 11
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private q0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h;

    invoke-direct {v2, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->a(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    if-ne p1, v1, :cond_0

    const-string p0, "(\u5de6\u5e93)"

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p0, "(\u53f3\u8f6c)"

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p0, v0, :cond_2

    if-ne p1, v1, :cond_2

    const-string p0, "(\u53cd\u66f2)"

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private u(Ljava/util/List;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-static {v0}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->o(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->j:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->k:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->l:Landroidx/recyclerview/widget/g;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/g;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 8
    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/u;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/u;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->collectOne:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/c0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/c0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->cancelModel:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/l;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->sceneTv:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->m0()V

    return-void
.end method

.method private synthetic w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->i:Ljava/lang/String;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget v4, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->b:I

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->m0()V

    const-string p1, "\u6dfb\u52a0\u6210\u529f"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic y(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V
    .locals 0

    add-int/lit8 p3, p3, 0x1

    .line 1
    iput p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->q0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method


# virtual methods
.method public synthetic B(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->A(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method public synthetic D(Ljava/lang/StringBuilder;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->C(Ljava/lang/StringBuilder;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic F()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->E()V

    return-void
.end method

.method public synthetic I(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->H(Landroid/view/View;)V

    return-void
.end method

.method public synthetic K(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->J(Landroid/view/View;)V

    return-void
.end method

.method public synthetic M(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->L(Landroid/view/View;)V

    return-void
.end method

.method public synthetic O(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->N(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$e;)V

    return-void
.end method

.method public synthetic Q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->P(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$g;)V

    return-void
.end method

.method public synthetic S(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->R(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;)V

    return-void
.end method

.method public synthetic U(Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->T(Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic W(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->V(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public synthetic Y()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->X()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->Z(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method public synthetic c0(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b0(Ljava/util/List;)V

    return-void
.end method

.method public synthetic e0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic g0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->f0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic i0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->h0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    return-void
.end method

.method public synthetic k0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->j0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;)V

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->e:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/r;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/r;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->j()V

    :cond_1
    return-void
.end method

.method public synthetic x(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic z(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->y(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V

    return-void
.end method
