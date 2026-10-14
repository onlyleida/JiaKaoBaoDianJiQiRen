.class Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;->a:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;->b:Ljava/util/Map;

    const/16 v1, 0x8

    new-array v1, v1, [Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;-><init>()V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p0

    const/4 p1, 0x1

    xor-int/2addr p0, p1

    invoke-static {v1, v2, p0}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result p0

    iput p0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    return p1
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;Landroid/view/View;)V
    .locals 0

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/e0;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e0;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->u(Lcn/mucang/android/jiakaoyi/signal/c/d$a;)V

    return-void
.end method


# virtual methods
.method public e(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;->a(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;->a(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, -0xb5c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;->a(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 7
    :goto_1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/d0;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/d0;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;
    .locals 3

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->exam_light_dialog_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public g(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 2
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 4
    :goto_1
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-eq v3, v6, :cond_2

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v3, v7, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v6

    goto :goto_4

    .line 6
    :cond_2
    :goto_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-ne v4, v6, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;->b:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;->e(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;->f(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;

    move-result-object p1

    return-object p1
.end method
