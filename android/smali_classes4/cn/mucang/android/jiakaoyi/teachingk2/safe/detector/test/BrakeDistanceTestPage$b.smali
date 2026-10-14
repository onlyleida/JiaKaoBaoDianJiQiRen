.class Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private synthetic c(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;ILandroid/view/View;)V
    .locals 0

    .line 1
    new-instance p3, Landroid/app/AlertDialog$Builder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "\u786e\u5b9a\u5220\u9664\u8fd9\u6761\u6570\u636e?"

    .line 2
    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/d;

    invoke-direct {p3, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;I)V

    const-string p2, "\u5220\u9664"

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u53d6\u6d88"

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public synthetic d(ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;->c(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;ILandroid/view/View;)V

    return-void
.end method

.method public g(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    .line 2
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5239\u8f66\u901f\u5ea6="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;->speed:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ",\u5239\u8f66\u8ddd\u79bb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;->distance:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;->a:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;->a:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/c;

    invoke-direct {v1, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;
    .locals 1

    .line 1
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/16 v0, 0x14

    .line 2
    invoke-virtual {p2, p1, v0, p1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 p1, -0x1000000

    .line 3
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;->g(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;->h(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;

    move-result-object p1

    return-object p1
.end method
