.class public final Lcn/mucang/jiakaoyi/uilib/ui/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JJ\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0016\u0008\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/widget/ListPopupHelper;",
        "",
        "()V",
        "showPop",
        "",
        "view",
        "Landroid/view/View;",
        "list",
        "",
        "",
        "onChosen",
        "Lkotlin/Function1;",
        "",
        "resLayoutId",
        "needSave",
        "",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Landroid/view/View;ZLjava/util/List;Lkotlin/jvm/b/l;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcn/mucang/jiakaoyi/uilib/ui/widget/d;->d(Landroid/view/View;ZLjava/util/List;Lkotlin/jvm/b/l;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static final b(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/b/l;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/v;",
            ">;IZ)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/appcompat/widget/d0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/d0;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/d0;->l(Landroid/widget/ListAdapter;)V

    const/4 p3, -0x2

    .line 3
    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/d0;->P(I)V

    .line 4
    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/d0;->G(I)V

    .line 5
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/d0;->B(Landroid/view/View;)V

    const/4 p3, 0x1

    .line 6
    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/d0;->I(Z)V

    .line 7
    new-instance p3, Lcn/mucang/jiakaoyi/uilib/ui/widget/a;

    move-object v1, p3

    move-object v2, p0

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/jiakaoyi/uilib/ui/widget/a;-><init>(Landroid/view/View;ZLjava/util/List;Lkotlin/jvm/b/l;Landroidx/appcompat/widget/d0;)V

    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/d0;->K(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/d0;->show()V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/b/l;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_1

    .line 1
    sget p3, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->common_list_popup_item:I

    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    const/4 p4, 0x1

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/ui/widget/d;->b(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/b/l;IZ)V

    return-void
.end method

.method private static final d(Landroid/view/View;ZLjava/util/List;Lkotlin/jvm/b/l;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p5, "$view"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$list"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$pop"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p5, p0, Landroid/widget/TextView;

    if-eqz p5, :cond_1

    if-eqz p1, :cond_1

    .line 2
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p2, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-static {p1, p5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p2, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-nez p3, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    invoke-virtual {p4}, Landroidx/appcompat/widget/d0;->dismiss()V

    return-void
.end method
