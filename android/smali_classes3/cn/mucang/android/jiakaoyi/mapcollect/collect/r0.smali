.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;,
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;,
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;,
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;,
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;,
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$g;
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field private final b:Landroid/widget/Spinner;

.field private final c:Landroid/view/View;

.field private final d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

.field private final e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

.field private f:I

.field private g:I

.field private h:I

.field private final i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

.field private final j:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

.field private final k:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

.field private final l:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;

.field private final m:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

.field private final n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->pos_type:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->b:Landroid/widget/Spinner;

    .line 5
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->c:Landroid/view/View;

    .line 6
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->m:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->leftMirrorList:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    sget v2, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->rightMirrorList:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    sget v3, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->collect_info:I

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->n:Landroid/widget/TextView;

    .line 10
    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    invoke-direct {v3, p6}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    const/4 p6, 0x1

    .line 11
    iput p6, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->f:I

    .line 12
    iput p6, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->g:I

    .line 13
    iput p6, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->h:I

    .line 14
    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 15
    new-instance v4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;

    invoke-direct {v4, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;

    .line 16
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {p2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 17
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "\u8f66\u8eab"

    .line 18
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\u5de6\u540e\u89c6\u955c"

    .line 20
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "\u53f3\u540e\u89c6\u955c"

    .line 21
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "\u5de6\u8f6e\u5ed3"

    .line 23
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "\u53f3\u8f6e\u5ed3"

    .line 24
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_1
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v4, p1, v5, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p2, 0x1090009

    .line 26
    invoke-virtual {v4, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 27
    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 28
    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;

    invoke-direct {p2, p0, p3, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 p2, 0x0

    .line 29
    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 30
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v4, v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;Ljava/util/List;Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    .line 31
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, p6, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 32
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 33
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-direct {v0, p0, v4, v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;Ljava/util/List;Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->j:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    .line 34
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, p6, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 35
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    iget-object v1, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-direct {v0, p0, v1, v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;Ljava/util/List;Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->k:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    .line 37
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {v1, p3, p6, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 38
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p6, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 40
    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 41
    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/f;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/f;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    invoke-virtual {p5, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const-class p2, Lcn/mucang/android/jiakaoyi/hpmap/model/a;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    new-instance p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/e;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/e;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    invoke-virtual {p2, p1, p3}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 43
    const-class p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    new-instance p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/g;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/g;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    invoke-virtual {p2, p1, p3}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 44
    const-class p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$g;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    new-instance p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    invoke-virtual {p2, p1, p3}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5de6\u524d\u8f6e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontOffset:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u53f3\u524d\u8f6e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontOffset:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u5de6\u540e\u8f6e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackOffset:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u53f3\u540e\u8f6e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackOffset:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u524d\u6321\u98ce\u8ddd\u79bb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->frontDistance:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u540e\u6321\u98ce\u8ddd\u79bb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->backDistance:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u8f66\u8eab\u9ad8:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosHeight:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private B()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->copy()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->n(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const-wide v1, 0x4066800000000000L    # 180.0

    const-wide v3, 0x407cc00000000000L    # 460.0

    invoke-static {v1, v2, v3, v4, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const-wide v1, -0x3fa9800000000000L    # -90.0

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-nez v1, :cond_2

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v3

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_3
    return-void

    .line 10
    :cond_4
    :goto_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private D(D)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    mul-double p1, p1, v1

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "%.2f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->f:I

    return p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->j:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->f:I

    return v0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->k:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;D)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->D(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Landroid/widget/Spinner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->b:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->g:I

    return p0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->g:I

    return v0
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->h:I

    return p0
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->h:I

    return v0
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    return-object p0
.end method

.method static synthetic l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    return-object p0
.end method

.method static synthetic m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->B()V

    return-void
.end method

.method static synthetic n(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    return-object p0
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->m:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->modelCode:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->m:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-virtual {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->p(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    const-string v0, "\u8f66\u8eab\u91c7\u96c6\u5b8c\u6210"

    .line 8
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->C(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic q(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->o()V

    return-void
.end method

.method private synthetic s(Lcn/mucang/android/jiakaoyi/hpmap/model/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->B()V

    return-void
.end method

.method private synthetic u(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->A()V

    return-void
.end method

.method private synthetic w(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$g;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;Ljava/util/List;)Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->j:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;Ljava/util/List;)Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->k:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;Ljava/util/List;)Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->j:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->k:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->B()V

    return-void
.end method

.method private synthetic y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->B()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected C(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method public p()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    return-object v0
.end method

.method public synthetic r(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->q(Landroid/view/View;)V

    return-void
.end method

.method public synthetic t(Lcn/mucang/android/jiakaoyi/hpmap/model/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->s(Lcn/mucang/android/jiakaoyi/hpmap/model/a;)V

    return-void
.end method

.method public synthetic v(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->u(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;)V

    return-void
.end method

.method public synthetic x(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->w(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$g;)V

    return-void
.end method

.method public synthetic z()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->y()V

    return-void
.end method
