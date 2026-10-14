.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;->b()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->a:[Ljava/lang/String;

    return-void
.end method

.method private synthetic c(ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->f(I)V

    return-void
.end method

.method private f(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;

    move-result-object v1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    move-result-object v2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->l()V

    return-void
.end method


# virtual methods
.method public synthetic d(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->c(ILandroid/view/View;)V

    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$b;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$b;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$b;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->a:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/i;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/i;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$b;
    .locals 3

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->hpmap__collect_step_point:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$b;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$c;->g(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$b;

    move-result-object p1

    return-object p1
.end method
