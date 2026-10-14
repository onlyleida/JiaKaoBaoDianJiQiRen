.class public final Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->s0(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initLineTypeSpinner$1",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "p0",
        "Landroid/widget/AdapterView;",
        "p1",
        "Landroid/view/View;",
        "position",
        "",
        "p3",
        "",
        "onNothingSelected",
        "MapCollectK3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

.field final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->b:Ljava/util/List;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ILcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->d(ILcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;IILcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->c(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;IILcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final c(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;IILcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p4, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->spLineTypeList:I

    invoke-virtual {p0, p4}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Spinner;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->P(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;I)V

    .line 3
    invoke-static {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->O(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;I)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->k0()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object p1

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->y(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->f(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 5
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->X(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V

    return-void
.end method

.method private static final d(ILcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, -0x1

    if-ne p0, p2, :cond_0

    const/4 p0, 0x0

    .line 1
    :cond_0
    sget p2, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->spLineTypeList:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    sget p2, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->spLineTypeList:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p4, p1, Ljava/lang/Integer;

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object p1, p5

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    :goto_1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->b:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/k3collect/d0;->c(Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;)I

    move-result p4

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->r(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p5

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->j()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object v0

    .line 4
    :goto_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->s(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)I

    move-result v1

    if-ne v1, p4, :cond_3

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->D(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p3, p1, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->r(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->o()Z

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    :goto_3
    if-eqz v2, :cond_7

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object p5, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    :goto_4
    if-nez p5, :cond_7

    .line 6
    new-instance p2, Landroidx/appcompat/app/c$a;

    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-direct {p2, p5}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string p5, "\u5f53\u524d\u6b63\u5728\u91c7\u96c6\uff0c\u8fd8\u6ca1\u4fdd\u5b58\uff0c\u5207\u6362\u5c06\u5bfc\u81f4\u5df2\u7ecf\u91c7\u96c6\u7684\u6570\u636e\u4e22\u5931\uff0c\u786e\u5b9a\u5207\u6362?"

    .line 7
    invoke-virtual {p2, p5}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p2

    .line 8
    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/q;

    invoke-direct {v1, p5, p3, p4, v0}, Lcn/mucang/android/jiakaoyi/k3collect/q;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;IILcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V

    const-string p3, "\u786e\u5b9a\u5207\u6362"

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p2

    .line 9
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    new-instance p4, Lcn/mucang/android/jiakaoyi/k3collect/p;

    invoke-direct {p4, p1, p3}, Lcn/mucang/android/jiakaoyi/k3collect/p;-><init>(ILcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V

    const-string p1, "\u4e0d\u5207\u6362"

    invoke-virtual {p2, p1, p4}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_5

    .line 11
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1, p3}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->P(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;I)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1, p4}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->O(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;I)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->X(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V

    :goto_5
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
