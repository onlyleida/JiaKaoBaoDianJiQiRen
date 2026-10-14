.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/r0;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ItemDebugToolsBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ItemDebugToolsBinding;",
        "()V",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/r0;->p(Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;Landroid/view/View;)V

    return-void
.end method

.method private static final p(Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;Landroid/view/View;)V
    .locals 6

    const-string p1, "$item"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;->url:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;->md5:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.ui.setting.DebugToolsActivity"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string p1, "MucangConfig.getCurrentA\u2026y).supportFragmentManager"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;->url:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;->name:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;->packageName:Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;->md5:Ljava/lang/String;

    .line 8
    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;->remark:Ljava/lang/String;

    .line 9
    invoke-static/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->f(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u4e0b\u8f7d\u5730\u5740\u6709\u95ee\u9898"

    .line 10
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/r0;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/ItemDebugToolsBinding;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ItemDebugToolsBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ItemDebugToolsBinding;->tvName:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ItemDebugToolsBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ItemDebugToolsBinding;->btnDownload:Landroid/widget/Button;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/a0;

    invoke-direct {v0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/a0;-><init>(Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
