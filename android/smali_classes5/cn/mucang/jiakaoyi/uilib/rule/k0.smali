.class public final Lcn/mucang/jiakaoyi/uilib/rule/k0;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u001e\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0007H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rule/SwitchItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;",
        "supportFragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "hideCheckDeducts",
        "",
        "isEdit",
        "(Landroidx/fragment/app/FragmentManager;ZZ)V",
        "getSupportFragmentManager",
        "()Landroidx/fragment/app/FragmentManager;",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "setSelect",
        "viewBinding",
        "isSelected",
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


# instance fields
.field private final b:Landroidx/fragment/app/FragmentManager;

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;ZZ)V
    .locals 1

    const-string v0, "supportFragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/k0;->b:Landroidx/fragment/app/FragmentManager;

    .line 4
    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/rule/k0;->c:Z

    .line 5
    iput-boolean p3, p0, Lcn/mucang/jiakaoyi/uilib/rule/k0;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;ZZILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/rule/k0;-><init>(Landroidx/fragment/app/FragmentManager;ZZ)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/jiakaoyi/uilib/rule/k0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/k0;->s(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/jiakaoyi/uilib/rule/k0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/jiakaoyi/uilib/rule/k0;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/rule/k0;->r(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/jiakaoyi/uilib/rule/k0;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/jiakaoyi/uilib/rule/k0;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 1

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$holder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->isSelected()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    const-string p3, "item.value"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-direct {p1, p2, p0}, Lcn/mucang/jiakaoyi/uilib/rule/k0;->t(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;Z)V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/jiakaoyi/uilib/rule/k0;Landroid/view/View;)V
    .locals 0

    const-string p2, "$item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/rule/dialog/l;->a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/l;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/rule/k0;->n()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/l;->a(Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method private final t(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;->valueTv:Landroid/widget/TextView;

    const-string v1, "\u662f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;->valueTv:Landroid/widget/TextView;

    const-string v1, "\u5426"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :goto_0
    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;->valueTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/k0;->q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;)V

    return-void
.end method

.method public final n()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/k0;->b:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;",
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

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;->descTv:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;->valueTv:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    const-string v2, "item.value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;->valueTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/rule/x;

    invoke-direct {v1, p2, p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/x;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/jiakaoyi/uilib/rule/k0;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;->valueTv:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/k0;->d:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/rule/k0;->t(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;Z)V

    .line 6
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->deductIds:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;->checkDeducts:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/k0;->c:Z

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;->checkDeducts:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;->checkDeducts:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemSwitchBinding;->checkDeducts:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/w;

    invoke-direct {v0, p2, p0}, Lcn/mucang/jiakaoyi/uilib/rule/w;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/jiakaoyi/uilib/rule/k0;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method
