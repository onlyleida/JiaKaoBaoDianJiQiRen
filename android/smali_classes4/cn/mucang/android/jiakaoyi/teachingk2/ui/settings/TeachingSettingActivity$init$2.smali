.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001e\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$Item;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "teachbase_release"
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
.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2;->r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2;->s(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;[Ljava/lang/Float;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2;->t(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;[Ljava/lang/Float;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;Landroid/view/View;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    move-result-object v1

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2$onBindViewHolder$1$1$1;

    invoke-direct {v3, p2, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2$onBindViewHolder$1$1$1;-><init>(Landroid/view/View;ZLcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;)V

    invoke-static {p0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Landroid/view/View;)V
    .locals 8

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gps_exam_type_use_5"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->b(Z)V

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key-normal-speed-config"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 6
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;->text:Landroid/widget/TextView;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p3}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string v2, "1.5\u7801"

    const-string v3, "2\u7801"

    const-string v4, "2.5\u7801"

    const-string v5, "3\u7801"

    const-string v6, "3.5\u7801"

    const-string v7, "4\u7801"

    .line 8
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x6

    new-array p3, p3, [Ljava/lang/Float;

    const/4 v0, 0x0

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 9
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p3, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p3, v1

    const/4 v0, 0x2

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x3

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x4

    const/high16 v1, 0x40600000    # 3.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x5

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p3, v0

    .line 10
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p2}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u9009\u62e9\u56fa\u5b9a\u901f\u5ea6"

    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/h;

    invoke-direct {v1, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/h;-><init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;[Ljava/lang/Float;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/c$a;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;[Ljava/lang/Float;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "$this_with"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$values"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    aget-object p1, p1, p4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string p3, "key-normal-speed-value"

    .line 2
    invoke-static {p3, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    .line 3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;->text:Landroid/widget/TextView;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2;->q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;)V

    return-void
.end method

.method public q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;->text:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;->stepCb:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;->stepCb:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/f;

    invoke-direct {v1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;->text:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;->stepCb:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 8
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;->stepCb:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/g;

    invoke-direct {v2, p2, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
