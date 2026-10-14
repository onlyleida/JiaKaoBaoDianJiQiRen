.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/widget/LinearLayout;

.field private final c:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->b:Landroid/widget/LinearLayout;

    .line 4
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 5
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object p1

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1
.end method

.method private synthetic c(Landroid/view/View;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-direct {p0, p1, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->n(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    .line 2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-int v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-int v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->degree:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->a()V

    return-void
.end method

.method private synthetic g(Landroid/view/View;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private j(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->onTimeEt:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2
    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->onTime:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m$a;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->offTimeEt:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 6
    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->offTime:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m$b;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->displayTimeEt:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 10
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->duration:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m$c;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;)V

    .line 12
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private k(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->deleteIv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/k;

    invoke-direct {v1, p0, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/k;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;Landroid/view/View;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->posTv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->degreeTv:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->degree:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->refresh:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/j;

    invoke-direct {v3, p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->j(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;)V

    return-void
.end method

.method private l(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->titleTv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->deleteIv:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/i;

    invoke-direct {v0, p0, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;Landroid/view/View;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->j(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;)V

    return-void
.end method

.method private n(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    instance-of v1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-nez v1, :cond_2

    instance-of v1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    if-eqz v1, :cond_5

    .line 4
    :cond_2
    invoke-direct {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->j()Landroid/util/SparseArray;

    move-result-object p2

    const/4 v1, 0x4

    .line 7
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 8
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x6

    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    cmpl-double v8, v4, v6

    if-lez v8, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    .line 9
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Debug129"

    invoke-static {v5, v4}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v2, v2

    .line 10
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    double-to-float v0, v4

    .line 11
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    float-to-double v4, v0

    .line 12
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sub-double/2addr v4, v0

    double-to-float p2, v4

    .line 14
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p2

    mul-float v2, v2, p2

    float-to-int p2, v2

    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->degree:I

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->lineType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->layout_teach_form_line_tip_frame_item:I

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->k(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;)V

    goto/16 :goto_1

    :cond_1
    const-string v1, ""

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->objectName:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->find(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ebf\u6bb5\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u70b9\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->pointIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u533a\u57df\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->getIndexDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89d2\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->getIndexDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_5
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->layout_teach_form_line_tip_title_item:I

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->l(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;Ljava/lang/String;)V

    .line 11
    :goto_1
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {p1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_6

    .line 12
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 13
    :cond_6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method

.method public synthetic d(Landroid/view/View;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->c(Landroid/view/View;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;)V

    return-void
.end method

.method public synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->e(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method public synthetic h(Landroid/view/View;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->g(Landroid/view/View;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/view/View;)V

    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->a(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public m(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    return-void
.end method
