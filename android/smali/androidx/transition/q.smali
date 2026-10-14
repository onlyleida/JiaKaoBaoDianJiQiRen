.class public Landroidx/transition/q;
.super Landroidx/transition/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/q$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/m;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field c:I

.field d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/m;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/transition/q;->b:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/transition/q;->d:Z

    .line 5
    iput v0, p0, Landroidx/transition/q;->e:I

    return-void
.end method

.method private h(Landroidx/transition/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p0, p1, Landroidx/transition/m;->mParent:Landroidx/transition/q;

    return-void
.end method

.method private v()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/transition/q$b;

    invoke-direct {v0, p0}, Landroidx/transition/q$b;-><init>(Landroidx/transition/q;)V

    .line 2
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    .line 3
    invoke-virtual {v2, v0}, Landroidx/transition/m;->addListener(Landroidx/transition/m$g;)Landroidx/transition/m;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroidx/transition/q;->c:I

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroidx/transition/m$g;)Landroidx/transition/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/q;->b(Landroidx/transition/m$g;)Landroidx/transition/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(I)Landroidx/transition/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/q;->c(I)Landroidx/transition/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Landroidx/transition/m;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/transition/q;->d(Landroid/view/View;)Landroidx/transition/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)Landroidx/transition/m;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/transition/q;->e(Ljava/lang/Class;)Landroidx/transition/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)Landroidx/transition/m;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/transition/q;->f(Ljava/lang/String;)Landroidx/transition/q;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroidx/transition/m$g;)Landroidx/transition/q;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/m;->addListener(Landroidx/transition/m$g;)Landroidx/transition/m;

    move-result-object p1

    check-cast p1, Landroidx/transition/q;

    return-object p1
.end method

.method public c(I)Landroidx/transition/q;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    invoke-virtual {v1, p1}, Landroidx/transition/m;->addTarget(I)Landroidx/transition/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/m;->addTarget(I)Landroidx/transition/m;

    move-result-object p1

    check-cast p1, Landroidx/transition/q;

    return-object p1
.end method

.method protected cancel()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/transition/m;->cancel()V

    .line 2
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    invoke-virtual {v2}, Landroidx/transition/m;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureEndValues(Landroidx/transition/t;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/transition/t;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/m;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    .line 3
    iget-object v2, p1, Landroidx/transition/t;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/transition/m;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Landroidx/transition/m;->captureEndValues(Landroidx/transition/t;)V

    .line 5
    iget-object v2, p1, Landroidx/transition/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method capturePropagationValues(Landroidx/transition/t;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/m;->capturePropagationValues(Landroidx/transition/t;)V

    .line 2
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    invoke-virtual {v2, p1}, Landroidx/transition/m;->capturePropagationValues(Landroidx/transition/t;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureStartValues(Landroidx/transition/t;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/transition/t;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/m;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    .line 3
    iget-object v2, p1, Landroidx/transition/t;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/transition/m;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Landroidx/transition/m;->captureStartValues(Landroidx/transition/t;)V

    .line 5
    iget-object v2, p1, Landroidx/transition/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clone()Landroidx/transition/m;
    .locals 4

    .line 2
    invoke-super {p0}, Landroidx/transition/m;->clone()Landroidx/transition/m;

    move-result-object v0

    check-cast v0, Landroidx/transition/q;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    .line 4
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5
    iget-object v3, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/m;

    invoke-virtual {v3}, Landroidx/transition/m;->clone()Landroidx/transition/m;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/transition/q;->h(Landroidx/transition/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/transition/q;->clone()Landroidx/transition/m;

    move-result-object v0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroidx/transition/u;Landroidx/transition/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/u;",
            "Landroidx/transition/u;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/t;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/t;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/m;->getStartDelay()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 3
    iget-object v5, v0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/transition/m;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 4
    iget-boolean v5, v0, Landroidx/transition/q;->b:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 5
    :cond_0
    invoke-virtual {v6}, Landroidx/transition/m;->getStartDelay()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 6
    invoke-virtual {v6, v9, v10}, Landroidx/transition/m;->setStartDelay(J)Landroidx/transition/m;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v6, v1, v2}, Landroidx/transition/m;->setStartDelay(J)Landroidx/transition/m;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 8
    invoke-virtual/range {v6 .. v11}, Landroidx/transition/m;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/u;Landroidx/transition/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public d(Landroid/view/View;)Landroidx/transition/q;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    invoke-virtual {v1, p1}, Landroidx/transition/m;->addTarget(Landroid/view/View;)Landroidx/transition/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/m;->addTarget(Landroid/view/View;)Landroidx/transition/m;

    move-result-object p1

    check-cast p1, Landroidx/transition/q;

    return-object p1
.end method

.method public e(Ljava/lang/Class;)Landroidx/transition/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/q;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    invoke-virtual {v1, p1}, Landroidx/transition/m;->addTarget(Ljava/lang/Class;)Landroidx/transition/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/m;->addTarget(Ljava/lang/Class;)Landroidx/transition/m;

    move-result-object p1

    check-cast p1, Landroidx/transition/q;

    return-object p1
.end method

.method public excludeTarget(IZ)Landroidx/transition/m;
    .locals 2

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    invoke-virtual {v1, p1, p2}, Landroidx/transition/m;->excludeTarget(IZ)Landroidx/transition/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/transition/m;->excludeTarget(IZ)Landroidx/transition/m;

    move-result-object p1

    return-object p1
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroidx/transition/m;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    invoke-virtual {v1, p1, p2}, Landroidx/transition/m;->excludeTarget(Landroid/view/View;Z)Landroidx/transition/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/transition/m;->excludeTarget(Landroid/view/View;Z)Landroidx/transition/m;

    move-result-object p1

    return-object p1
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroidx/transition/m;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 11
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    invoke-virtual {v1, p1, p2}, Landroidx/transition/m;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/transition/m;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/m;

    move-result-object p1

    return-object p1
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroidx/transition/m;
    .locals 2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    invoke-virtual {v1, p1, p2}, Landroidx/transition/m;->excludeTarget(Ljava/lang/String;Z)Landroidx/transition/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/transition/m;->excludeTarget(Ljava/lang/String;Z)Landroidx/transition/m;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;)Landroidx/transition/q;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    invoke-virtual {v1, p1}, Landroidx/transition/m;->addTarget(Ljava/lang/String;)Landroidx/transition/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/m;->addTarget(Ljava/lang/String;)Landroidx/transition/m;

    move-result-object p1

    check-cast p1, Landroidx/transition/q;

    return-object p1
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/m;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 2
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    invoke-virtual {v2, p1}, Landroidx/transition/m;->forceToEnd(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Landroidx/transition/m;)Landroidx/transition/q;
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroidx/transition/q;->h(Landroidx/transition/m;)V

    .line 2
    iget-wide v0, p0, Landroidx/transition/m;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroidx/transition/m;->setDuration(J)Landroidx/transition/m;

    .line 4
    :cond_0
    iget v0, p0, Landroidx/transition/q;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/transition/m;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/m;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/m;

    .line 6
    :cond_1
    iget v0, p0, Landroidx/transition/q;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/transition/m;->getPropagation()Landroidx/transition/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/m;->setPropagation(Landroidx/transition/p;)V

    .line 8
    :cond_2
    iget v0, p0, Landroidx/transition/q;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/transition/m;->getPathMotion()Landroidx/transition/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/m;->setPathMotion(Landroidx/transition/g;)V

    .line 10
    :cond_3
    iget v0, p0, Landroidx/transition/q;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Landroidx/transition/m;->getEpicenterCallback()Landroidx/transition/m$f;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/m;->setEpicenterCallback(Landroidx/transition/m$f;)V

    :cond_4
    return-object p0
.end method

.method public i(I)Landroidx/transition/m;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/m;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public k(Landroidx/transition/m$g;)Landroidx/transition/q;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/m;->removeListener(Landroidx/transition/m$g;)Landroidx/transition/m;

    move-result-object p1

    check-cast p1, Landroidx/transition/q;

    return-object p1
.end method

.method public l(I)Landroidx/transition/q;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    invoke-virtual {v1, p1}, Landroidx/transition/m;->removeTarget(I)Landroidx/transition/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/m;->removeTarget(I)Landroidx/transition/m;

    move-result-object p1

    check-cast p1, Landroidx/transition/q;

    return-object p1
.end method

.method public m(Landroid/view/View;)Landroidx/transition/q;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    invoke-virtual {v1, p1}, Landroidx/transition/m;->removeTarget(Landroid/view/View;)Landroidx/transition/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/m;->removeTarget(Landroid/view/View;)Landroidx/transition/m;

    move-result-object p1

    check-cast p1, Landroidx/transition/q;

    return-object p1
.end method

.method public n(Ljava/lang/Class;)Landroidx/transition/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/q;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    invoke-virtual {v1, p1}, Landroidx/transition/m;->removeTarget(Ljava/lang/Class;)Landroidx/transition/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/m;->removeTarget(Ljava/lang/Class;)Landroidx/transition/m;

    move-result-object p1

    check-cast p1, Landroidx/transition/q;

    return-object p1
.end method

.method public o(Ljava/lang/String;)Landroidx/transition/q;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    invoke-virtual {v1, p1}, Landroidx/transition/m;->removeTarget(Ljava/lang/String;)Landroidx/transition/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/m;->removeTarget(Ljava/lang/String;)Landroidx/transition/m;

    move-result-object p1

    check-cast p1, Landroidx/transition/q;

    return-object p1
.end method

.method public p(Landroidx/transition/m;)Landroidx/transition/q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Landroidx/transition/m;->mParent:Landroidx/transition/q;

    return-object p0
.end method

.method public pause(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/m;->pause(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    invoke-virtual {v2, p1}, Landroidx/transition/m;->pause(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(J)Landroidx/transition/q;
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/transition/m;->setDuration(J)Landroidx/transition/m;

    .line 2
    iget-wide v0, p0, Landroidx/transition/m;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    invoke-virtual {v2, p1, p2}, Landroidx/transition/m;->setDuration(J)Landroidx/transition/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public r(Landroid/animation/TimeInterpolator;)Landroidx/transition/q;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/transition/q;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/q;->e:I

    .line 2
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    invoke-virtual {v2, p1}, Landroidx/transition/m;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/m;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/m;

    move-result-object p1

    check-cast p1, Landroidx/transition/q;

    return-object p1
.end method

.method public bridge synthetic removeListener(Landroidx/transition/m$g;)Landroidx/transition/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/q;->k(Landroidx/transition/m$g;)Landroidx/transition/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(I)Landroidx/transition/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/q;->l(I)Landroidx/transition/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Landroidx/transition/m;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/transition/q;->m(Landroid/view/View;)Landroidx/transition/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Ljava/lang/Class;)Landroidx/transition/m;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/transition/q;->n(Ljava/lang/Class;)Landroidx/transition/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Ljava/lang/String;)Landroidx/transition/m;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/transition/q;->o(Ljava/lang/String;)Landroidx/transition/q;

    move-result-object p1

    return-object p1
.end method

.method public resume(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/m;->resume(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    invoke-virtual {v2, p1}, Landroidx/transition/m;->resume(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/m;->start()V

    .line 3
    invoke-virtual {p0}, Landroidx/transition/m;->end()V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Landroidx/transition/q;->v()V

    .line 5
    iget-boolean v0, p0, Landroidx/transition/q;->b:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    .line 8
    iget-object v2, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    .line 9
    new-instance v3, Landroidx/transition/q$a;

    invoke-direct {v3, p0, v2}, Landroidx/transition/q$a;-><init>(Landroidx/transition/q;Landroidx/transition/m;)V

    invoke-virtual {v1, v3}, Landroidx/transition/m;->addListener(Landroidx/transition/m$g;)Landroidx/transition/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/m;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Landroidx/transition/m;->runAnimators()V

    goto :goto_2

    .line 12
    :cond_2
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    .line 13
    invoke-virtual {v1}, Landroidx/transition/m;->runAnimators()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public s(I)Landroidx/transition/q;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Landroidx/transition/q;->b:Z

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iput-boolean v0, p0, Landroidx/transition/q;->b:Z

    :goto_0
    return-object p0
.end method

.method setCanRemoveViews(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/m;->setCanRemoveViews(Z)V

    .line 2
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    invoke-virtual {v2, p1}, Landroidx/transition/m;->setCanRemoveViews(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroidx/transition/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/transition/q;->q(J)Landroidx/transition/q;

    return-object p0
.end method

.method public setEpicenterCallback(Landroidx/transition/m$f;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/m;->setEpicenterCallback(Landroidx/transition/m$f;)V

    .line 2
    iget v0, p0, Landroidx/transition/q;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/transition/q;->e:I

    .line 3
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    invoke-virtual {v2, p1}, Landroidx/transition/m;->setEpicenterCallback(Landroidx/transition/m$f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/q;->r(Landroid/animation/TimeInterpolator;)Landroidx/transition/q;

    move-result-object p1

    return-object p1
.end method

.method public setPathMotion(Landroidx/transition/g;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/m;->setPathMotion(Landroidx/transition/g;)V

    .line 2
    iget v0, p0, Landroidx/transition/q;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/transition/q;->e:I

    .line 3
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    invoke-virtual {v1, p1}, Landroidx/transition/m;->setPathMotion(Landroidx/transition/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPropagation(Landroidx/transition/p;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/m;->setPropagation(Landroidx/transition/p;)V

    .line 2
    iget v0, p0, Landroidx/transition/q;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/transition/q;->e:I

    .line 3
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    invoke-virtual {v2, p1}, Landroidx/transition/m;->setPropagation(Landroidx/transition/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/q;->t(Landroid/view/ViewGroup;)Landroidx/transition/q;

    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)Landroidx/transition/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/transition/q;->u(J)Landroidx/transition/q;

    move-result-object p1

    return-object p1
.end method

.method t(Landroid/view/ViewGroup;)Landroidx/transition/q;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/m;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/m;

    .line 2
    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    invoke-virtual {v2, p1}, Landroidx/transition/m;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/m;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/transition/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/transition/m;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public u(J)Landroidx/transition/q;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/transition/m;->setStartDelay(J)Landroidx/transition/m;

    move-result-object p1

    check-cast p1, Landroidx/transition/q;

    return-object p1
.end method
