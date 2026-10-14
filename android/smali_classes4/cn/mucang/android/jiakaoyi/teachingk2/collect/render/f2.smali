.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;,
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

.field private final c:Landroidx/viewpager/widget/ViewPager;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/view/View;

.field private final h:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field private final i:Landroid/view/View;

.field private final j:Landroid/view/View;

.field private final k:Landroid/widget/EditText;

.field private final l:Landroid/widget/EditText;

.field private final m:Landroid/widget/TextView;

.field private final n:Landroid/view/View;

.field private final o:Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;

.field private final p:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->o:Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->r:Z

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->p:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

    .line 6
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->itemContainer:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->g:Landroid/view/View;

    .line 7
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->variableContainer:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->c:Landroidx/viewpager/widget/ViewPager;

    .line 8
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->tab_variable:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->d:Landroid/widget/TextView;

    .line 9
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->tab_form:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->e:Landroid/widget/TextView;

    .line 10
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->tab_error:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->f:Landroid/widget/TextView;

    .line 11
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->map:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->h:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 12
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->traceRoot:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->i:Landroid/view/View;

    .line 13
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->collectRoot:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->j:Landroid/view/View;

    .line 14
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->rangeEt:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->k:Landroid/widget/EditText;

    .line 15
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->timeEt:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->l:Landroid/widget/EditText;

    .line 16
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->startTv:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->m:Landroid/widget/TextView;

    .line 17
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->previewFl:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->n:Landroid/view/View;

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->n()V

    .line 19
    const-class p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/r1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/r1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 20
    const-class p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 21
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->save:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/s1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/s1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->closeIv:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i1;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->m()V

    .line 24
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->k()V

    return-void
.end method

.method private synthetic A(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->c:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private synthetic C(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->c:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private synthetic E(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->h()V

    return-void
.end method

.method private synthetic G(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->q:Z

    return-void
.end method

.method private synthetic I(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    :cond_0
    return-void
.end method

.method private synthetic K(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->a0()V

    return-void
.end method

.method private synthetic M(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->n:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic O(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->k()V

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method private synthetic Q()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->k()V

    return-void
.end method

.method private synthetic S(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->n(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u521b\u5efa\u6210\u529f"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/n1;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/n1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 5
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$e;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$e;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->v(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    const-string v0, "\u66f4\u65b0\u6210\u529f"

    .line 7
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/d1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/d1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 9
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$g;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$g;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic U(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object p1

    const-string p2, "\u542c\u5230\u63d0\u793a\u97f3\u8bf7\u505c\u8f66"

    .line 2
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->setVoice(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->p(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    return-void
.end method

.method private W()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->l()Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->r:Z

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->o:Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->j()V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->m:Landroid/widget/TextView;

    const-string v2, "\u7ed3\u675f\u91c7\u96c6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->p:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->h(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    :cond_0
    return-void
.end method

.method private X()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->r:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->m:Landroid/widget/TextView;

    const-string v1, "\u5f00\u59cb\u91c7\u96c6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->o:Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->p:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->b()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->k(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/utils/b;)Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->p:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 9
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    int-to-short v3, v3

    iput-short v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->o:Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->p:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->b()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->f(Lcn/mucang/android/jiakaoyi/signal/utils/b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->left:Ljava/util/List;

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->o:Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->p:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->b()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->i(Lcn/mucang/android/jiakaoyi/signal/utils/b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->right:Ljava/util/List;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->q:Z

    :cond_1
    return-void
.end method

.method private Y(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_6

    .line 2
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 3
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->sound:Z

    if-nez v3, :cond_0

    .line 4
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 5
    :cond_0
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;->imageUrl:Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;->videoUrl:Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_2
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    if-eqz v3, :cond_5

    .line 10
    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    .line 11
    iget v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->lineType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 12
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->objectName:Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-ne v3, v1, :cond_4

    .line 14
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_5

    .line 15
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 16
    iget v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->pointIndex:I

    if-gtz v2, :cond_5

    .line 17
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private Z(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/l1;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/l1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    const-string p1, "\u6b63\u5728\u4fdd\u5b58..."

    const-string v2, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-object p0
.end method

.method private a0()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u5148\u505c\u6b62\u91c7\u96c6"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->k()V

    return-void

    .line 5
    :cond_1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    const-string v2, "\u6ca1\u6709\u9009\u62e9\u4efb\u4f55\u53d8\u91cf\u6761\u4ef6"

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    .line 9
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    instance-of v6, v5, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v6, :cond_3

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u9519\u8bef\u9879\u63d0\u793a\u8bed\u97f3"

    .line 10
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    .line 11
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->i(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 12
    :cond_6
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->Y(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    .line 13
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 14
    iget-boolean v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    if-eqz v5, :cond_7

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_9

    .line 15
    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_9
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->Z(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->q:Z

    return p1
.end method

.method private b0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isStopTeach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6b64\u6559\u5b66\u70b9\u9700\u8981\u505c\u8f66\uff0c\u662f\u5426\u63d0\u524d\u589e\u52a0\u505c\u8f66\u63d0\u793a\u70b9\uff1f"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/o1;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/o1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    const-string p1, "\u786e\u5b9a"

    .line 3
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u53d6\u6d88"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->r:Z

    if-nez v1, :cond_1

    .line 3
    instance-of v1, v0, Lcn/mucang/jiakaoyi/uilib/h;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcn/mucang/jiakaoyi/uilib/h;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->OpenAutoTeach:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    invoke-interface {v0, v1}, Lcn/mucang/jiakaoyi/uilib/h;->a(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/p1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/p1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->e(ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->W()V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, v0, Lcn/mucang/jiakaoyi/uilib/h;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Lcn/mucang/jiakaoyi/uilib/h;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->OpenAutoTeach:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    invoke-interface {v0, v1}, Lcn/mucang/jiakaoyi/uilib/h;->a(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->e(ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void

    .line 10
    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->X()V

    :goto_0
    return-void
.end method

.method private i(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "\u6ca1\u6709\u6dfb\u52a0\u4efb\u4f55\u8f93\u51fa\u5f62\u5f0f"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v2, "\u8bf7\u8f93\u5165\u8bed\u97f3\u63d0\u793a"

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 4
    instance-of v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v3, :cond_1

    .line 5
    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->isValid()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 7
    :cond_3
    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v1
.end method

.method private l()Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-eqz v1, :cond_a

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_0

    .line 4
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    if-eqz v2, :cond_a

    goto/16 :goto_0

    .line 5
    :cond_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_1

    .line 6
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-eqz v2, :cond_a

    goto :goto_0

    .line 7
    :cond_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_2

    .line 8
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;

    if-eqz v2, :cond_a

    goto :goto_0

    .line 9
    :cond_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_3

    .line 10
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    if-eqz v2, :cond_a

    goto :goto_0

    .line 11
    :cond_3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_4

    .line 12
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    if-eqz v2, :cond_a

    goto :goto_0

    .line 13
    :cond_4
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_5

    .line 14
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;

    if-eqz v2, :cond_a

    goto :goto_0

    .line 15
    :cond_5
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_6

    .line 16
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

    if-eqz v2, :cond_a

    goto :goto_0

    .line 17
    :cond_6
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_7

    .line 18
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;

    if-eqz v2, :cond_a

    goto :goto_0

    .line 19
    :cond_7
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ETC:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_8

    .line 20
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/e;

    if-eqz v2, :cond_a

    goto :goto_0

    .line 21
    :cond_8
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QuKa:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_9

    .line 22
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/i;

    if-eqz v2, :cond_a

    goto :goto_0

    .line 23
    :cond_9
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_a

    .line 24
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    if-eqz v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_b

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bf7\u9a76\u5165"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u9879\u76ee"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_b
    return-object v1
.end method

.method private m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->c:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$c;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-virtual {v4}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;Landroidx/fragment/app/FragmentManager;I)V

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->c:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->c:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->d:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/q1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/q1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->e:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/j1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/j1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->f:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->m:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/m1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/m1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->k:Landroid/widget/EditText;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->l:Landroid/widget/EditText;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private synthetic q(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->a0()V

    return-void
.end method

.method private synthetic s(Lkotlin/jvm/b/a;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->k()V

    .line 3
    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private synthetic u(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;)V
    .locals 0

    .line 1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->W()V

    :cond_0
    return-void
.end method

.method private synthetic w(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;)V
    .locals 0

    .line 1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->X()V

    :cond_0
    return-void
.end method

.method private synthetic y(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->c:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method public synthetic B(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->A(Landroid/view/View;)V

    return-void
.end method

.method public synthetic D(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->C(Landroid/view/View;)V

    return-void
.end method

.method public synthetic F(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->E(Landroid/view/View;)V

    return-void
.end method

.method public synthetic H(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->G(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;)V

    return-void
.end method

.method public synthetic J(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->I(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method public synthetic L(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->K(Landroid/view/View;)V

    return-void
.end method

.method public synthetic N(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->M(Landroid/view/View;)V

    return-void
.end method

.method public synthetic P(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->O(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method public synthetic R()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->Q()V

    return-void
.end method

.method public synthetic T(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->S(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method public synthetic V(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->U(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public c0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->h:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$dimen;->rpx_600:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isTraceTeach()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->k:Landroid/widget/EditText;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->l:Landroid/widget/EditText;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->time:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_0
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->q:Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->n:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->i:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->j:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public d0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->k()V

    :cond_1
    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->c0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method g(Lkotlin/jvm/b/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->r:Z

    if-eqz v0, :cond_0

    const-string p1, "\u8bf7\u5148\u505c\u6b62\u91c7\u96c6"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->q:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5f53\u524d\u6709\u672a\u4fdd\u5b58\u5185\u5bb9\uff0c\u662f\u5426\u9700\u8981\u4fdd\u5b58\u540e\u9000\u51fa\uff1f"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V

    const-string v2, "\u4fdd\u5b58\u5e76\u9000\u51fa"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/k1;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/k1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;Lkotlin/jvm/b/a;)V

    const-string p1, "\u76f4\u63a5\u9000\u51fa"

    .line 6
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->k()V

    .line 10
    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public k()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->q:Z

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->g:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->n:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->h:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->q:Z

    return v0
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->o:Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->p:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->b()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->g(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/utils/b;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->p:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    :cond_0
    return-void
.end method

.method public p(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->q:Z

    if-eqz v0, :cond_0

    const-string p1, "\u5f53\u524d\u6570\u636e\u6ca1\u6709\u4fdd\u5b58\uff0c\u8bf7\u5148\u4fdd\u5b58\u6570\u636e\u6216\u53d6\u6d88"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object p1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u590d\u5236\u65f6\u95f4 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-double v0, v3

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->c0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic r(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->q(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic t(Lkotlin/jvm/b/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->s(Lkotlin/jvm/b/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic v(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->u(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;)V

    return-void
.end method

.method public synthetic x(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->w(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;)V

    return-void
.end method

.method public synthetic z(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->y(Landroid/view/View;)V

    return-void
.end method
