.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0008\tB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;",
        "()V",
        "getStatName",
        "",
        "init",
        "",
        "Companion",
        "PositionItemBinder",
        "k3setting_release"
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

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u968f\u673a\u64ad\u62a5\u5e8f\u53f7"

    return-object v0
.end method

.method protected init()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/q1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/q1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u968f\u673a\u64ad\u62a5\u5e8f\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "position"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6
    new-instance v9, Lcom/drakeet/multitype/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 7
    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity$a;

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity$init$adapter$1$1;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity$init$adapter$1$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;)V

    invoke-direct {v3, v1, v4}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity$a;-><init>(ILkotlin/jvm/b/l;)V

    .line 8
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v9, v1, v3}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-ltz v0, :cond_1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v2, v0, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    invoke-virtual {v9, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
