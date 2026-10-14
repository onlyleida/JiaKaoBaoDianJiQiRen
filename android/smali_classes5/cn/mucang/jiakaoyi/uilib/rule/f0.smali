.class public final Lcn/mucang/jiakaoyi/uilib/rule/f0;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u001e\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rule/OptionItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;",
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
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/f0;->b:Landroidx/fragment/app/FragmentManager;

    .line 4
    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/rule/f0;->c:Z

    .line 5
    iput-boolean p3, p0, Lcn/mucang/jiakaoyi/uilib/rule/f0;->d:Z

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
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/rule/f0;-><init>(Landroidx/fragment/app/FragmentManager;ZZ)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/jiakaoyi/uilib/rule/f0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/f0;->q(Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/jiakaoyi/uilib/rule/f0;Landroid/view/View;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/jiakaoyi/uilib/rule/f0;Landroid/view/View;)V
    .locals 0

    const-string p2, "$item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/rule/dialog/l;->a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/l;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/rule/f0;->n()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/l;->a(Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/f0;->p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;)V

    return-void
.end method

.method public final n()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/f0;->b:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;",
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

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;->descTv:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;->descTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->common_spinner_item:I

    .line 4
    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;->options:Ljava/util/List;

    .line 5
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/rule/f0$b;

    invoke-direct {v3, p2, v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/rule/f0$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Landroid/content/Context;ILjava/util/List;)V

    .line 6
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->common_spinner_drop_down_item:I

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;->valueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;->valueSpinner:Landroid/widget/Spinner;

    .line 9
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/rule/f0$a;

    invoke-direct {v1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/f0$a;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;->valueSpinner:Landroid/widget/Spinner;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;->valueSpinner:Landroid/widget/Spinner;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/f0;->d:Z

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 13
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

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;->checkDeducts:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 15
    :cond_2
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/f0;->c:Z

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;->checkDeducts:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;->checkDeducts:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;->checkDeducts:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/c;

    invoke-direct {v0, p2, p0}, Lcn/mucang/jiakaoyi/uilib/rule/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/jiakaoyi/uilib/rule/f0;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method
