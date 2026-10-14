.class Lcn/mucang/jiakaoyi/uilib/deduct/y$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/deduct/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/mucang/jiakaoyi/uilib/deduct/y$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/jiakaoyi/uilib/deduct/x;


# direct methods
.method private constructor <init>(Lcn/mucang/jiakaoyi/uilib/deduct/x;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/y$b;->a:Lcn/mucang/jiakaoyi/uilib/deduct/x;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/deduct/x;Lcn/mucang/jiakaoyi/uilib/deduct/y$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/y$b;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/x;)V

    return-void
.end method

.method private synthetic c(Lcn/mucang/android/jiakaoyi/engine/model/a;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/y$b;->a:Lcn/mucang/jiakaoyi/uilib/deduct/x;

    invoke-interface {p2, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/x;->a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public synthetic d(Lcn/mucang/android/jiakaoyi/engine/model/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/y$b;->c(Lcn/mucang/android/jiakaoyi/engine/model/a;Landroid/view/View;)V

    return-void
.end method

.method public e(Lcn/mucang/jiakaoyi/uilib/deduct/y$c;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/y$b;->a:Lcn/mucang/jiakaoyi/uilib/deduct/x;

    invoke-interface {v0}, Lcn/mucang/jiakaoyi/uilib/deduct/x;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/engine/model/a;

    .line 2
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "HH:mm:ss.SSS"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/engine/model/a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;->b:Landroid/widget/TextView;

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_comprehensive:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p1, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->e()Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_1
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/s/p;->a:Lcn/mucang/jiakaoyi/uilib/s/p;

    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;->e:Landroid/view/View;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/deduct/a;

    invoke-direct {v0, p0, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/a;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/y$b;Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcn/mucang/jiakaoyi/uilib/deduct/y$c;
    .locals 3

    .line 1
    new-instance p2, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->exam_fragment_deduct_detail_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/y$b;->a:Lcn/mucang/jiakaoyi/uilib/deduct/x;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcn/mucang/jiakaoyi/uilib/deduct/x;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/y$b;->e(Lcn/mucang/jiakaoyi/uilib/deduct/y$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/y$b;->f(Landroid/view/ViewGroup;I)Lcn/mucang/jiakaoyi/uilib/deduct/y$c;

    move-result-object p1

    return-object p1
.end method
