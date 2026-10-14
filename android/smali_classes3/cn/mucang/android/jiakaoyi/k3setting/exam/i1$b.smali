.class Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;->a:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private synthetic c(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic d(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;->c(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/view/View;)V

    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$c;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$c;->a:Landroid/widget/TextView;

    iget v1, p2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$c;->b:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$c;->c:Landroid/widget/TextView;

    iget v1, p2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$c;->d:Landroid/view/View;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/m0;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/m0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$c;
    .locals 3

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->exam_fragment_manual_judge_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$c;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public g(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;->e(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;->f(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$c;

    move-result-object p1

    return-object p1
.end method
