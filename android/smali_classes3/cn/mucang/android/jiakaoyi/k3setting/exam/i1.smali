.class public Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;
.super Lcn/mucang/jiakaoyi/uilib/ui/dialog/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;,
        Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$e;,
        Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;,
        Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$c;,
        Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;
    }
.end annotation


# instance fields
.field private c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

.field private d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field private e:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/recyclerview/widget/RecyclerView;

.field private g:Landroidx/recyclerview/widget/RecyclerView;

.field private h:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;

.field private i:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;

.field private final j:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/i0;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->j:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method static synthetic A(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;)Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->h:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;

    return-object p0
.end method

.method static synthetic B(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->g:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private C(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->steps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    .line 5
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->judgeType:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->needManual()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic D(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/Step;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private E()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->i:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->c(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;)[Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->i:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->c(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;)[Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->scrollToPosition(I)V

    return-void
.end method

.method public static F(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;-><init>()V

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    :cond_0
    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 3
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    .line 4
    iput-object p3, v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-string p1, "ManualDeductFragment"

    .line 5
    invoke-virtual {v0, p0, p1}, Lf/a/a/a/n/d/f;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private G()[Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->steps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/k3setting/exam/p0;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/p0;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic x(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;)Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object p0
.end method

.method static synthetic y(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object p1
.end method

.method static synthetic z(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->C(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->stepList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->G()[Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->j:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/4 v5, 0x0

    invoke-direct {p2, v0, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;-><init>([Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->i:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->E()V

    .line 7
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->deductList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->C(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-direct {p1, p2, v0, v5}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->h:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;

    .line 10
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected v()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->exam_fragment_manual_judge:I

    return v0
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_manual_deduct:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
