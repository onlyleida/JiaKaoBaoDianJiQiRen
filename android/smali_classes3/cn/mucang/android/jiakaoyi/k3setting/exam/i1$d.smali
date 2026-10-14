.class Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;

.field private final b:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/o0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/o0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 4
    array-length v0, p1

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->a:[Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->a:[Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;

    aget-object v4, p1, v1

    aget-object v5, p1, v1

    if-ne v5, p2, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-direct {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method synthetic constructor <init>([Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;-><init>([Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;)[Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->a:[Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;

    return-object p0
.end method

.method private synthetic d(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->h(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-void
.end method

.method private h(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->a:[Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 3
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v5, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v4, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;->b:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public synthetic e(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->d(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;Landroid/view/View;)V

    return-void
.end method

.method public g(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$e;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->a:[Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;

    aget-object p2, v0, p2

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$e;->a:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$e;->a:Landroid/widget/TextView;

    iget-boolean v1, p2, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/n0;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/n0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->a:[Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$f;

    array-length v0, v0

    return v0
.end method

.method public i(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$e;
    .locals 3

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$e;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->exam_fragment_manual_judge_step_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$e;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$e;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->g(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$e;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$d;->i(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$e;

    move-result-object p1

    return-object p1
.end method
