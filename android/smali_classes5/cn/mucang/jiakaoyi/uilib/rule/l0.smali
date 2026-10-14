.class public final Lcn/mucang/jiakaoyi/uilib/rule/l0;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/rule/l0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001aB!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000c2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\u001e\u0010\u0017\u001a\u00020\u00122\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0016\u0010\u0018\u001a\u00020\u00122\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0015H\u0016J\u0016\u0010\u0019\u001a\u00020\u00122\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0015H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\n\u001a&\u0012\u0004\u0012\u00020\u000c\u0012\u0008\u0012\u00060\rR\u00020\u00000\u000bj\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0008\u0012\u00060\rR\u00020\u0000`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rule/TextItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;",
        "supportFragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "hideCheckDeducts",
        "",
        "isEdit",
        "(Landroidx/fragment/app/FragmentManager;ZZ)V",
        "listenerMap",
        "Ljava/util/HashMap;",
        "Landroid/widget/EditText;",
        "Lcn/mucang/jiakaoyi/uilib/rule/TextItemBinder$MyTextWatcher;",
        "Lkotlin/collections/HashMap;",
        "getSupportFragmentManager",
        "()Landroidx/fragment/app/FragmentManager;",
        "initListener",
        "",
        "et",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "onBindViewHolder",
        "onViewAttachedToWindow",
        "onViewRecycled",
        "MyTextWatcher",
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

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/widget/EditText;",
            "Lcn/mucang/jiakaoyi/uilib/rule/l0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;ZZ)V
    .locals 1

    const-string v0, "supportFragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0;->b:Landroidx/fragment/app/FragmentManager;

    .line 4
    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0;->c:Z

    .line 5
    iput-boolean p3, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0;->d:Z

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0;->e:Ljava/util/HashMap;

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
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/rule/l0;-><init>(Landroidx/fragment/app/FragmentManager;ZZ)V

    return-void
.end method

.method private final o(Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/l0;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0;->e:Ljava/util/HashMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {v0, p2}, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->c(Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    .line 6
    invoke-virtual {v0, p3}, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->d(Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/jiakaoyi/uilib/rule/l0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/l0;->t(Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/jiakaoyi/uilib/rule/l0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/l0;->s(Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Landroid/view/View;)V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Landroid/view/View;)V
    .locals 2

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/app/d;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ruleKey(item.ruleId)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/jiakaoyi/uilib/rule/l0;Landroid/view/View;)V
    .locals 0

    const-string p2, "$item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/rule/dialog/l;->a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/l;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/rule/l0;->n()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/l;->a(Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/l0;->r(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    return-void
.end method

.method public bridge synthetic g(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/l0;->u(Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    return-void
.end method

.method public bridge synthetic i(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/l0;->v(Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    return-void
.end method

.method public final n()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0;->b:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public r(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;",
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

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->valueEt:Landroid/widget/EditText;

    const-string v1, "holder.viewBinding.valueEt"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/l0;->o(Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->descTv:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->valueEt:Landroid/widget/EditText;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->voice:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/rule/z;

    invoke-direct {v1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/z;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->valueEt:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0;->d:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

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

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->checkDeducts:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0;->c:Z

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->checkDeducts:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->checkDeducts:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->checkDeducts:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/y;

    invoke-direct {v0, p2, p0}, Lcn/mucang/jiakaoyi/uilib/rule/y;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/jiakaoyi/uilib/rule/l0;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method public u(Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/drakeet/multitype/c;->g(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->descTv:Landroid/widget/TextView;

    int-to-double v0, v0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    return-void
.end method

.method public v(Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/drakeet/multitype/c;->i(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    return-void
.end method
