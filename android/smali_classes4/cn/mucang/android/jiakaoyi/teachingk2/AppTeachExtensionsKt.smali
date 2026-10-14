.class public final Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u0007\u001a&\u0010\u0007\u001a\u00020\u0001*\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007\u001aF\u0010\u0007\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u0007\u001a\u001a\u0010\u0007\u001a\u00020\u0001*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u000e\u001a\u001a\u0010\u0019\u001a\u00020\u0001*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0014\u001a\u001a\u0010\u001d\u001a\u00020\u0001*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "exitCountDown",
        "",
        "Landroidx/lifecycle/LifecycleOwner;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutExitAppBinding;",
        "onExit",
        "Lkotlin/Function0;",
        "init",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/TeachingMenuBinding;",
        "title",
        "",
        "activity",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "showBlack",
        "",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;",
        "owner",
        "isLight",
        "backString",
        "backIcon",
        "",
        "backAction",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;",
        "scope",
        "Landroidx/lifecycle/LifecycleCoroutineScope;",
        "setDrawableLeft",
        "Landroid/widget/TextView;",
        "resId",
        "size",
        "setDrawableRight",
        "teachbase_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutExitAppBinding;Lkotlin/jvm/b/a;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi",
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/r;",
            "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutExitAppBinding;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onExit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$exitCountDown$1;

    const/4 p0, 0x0

    invoke-direct {v4, p1, p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$exitCountDown$1;-><init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutExitAppBinding;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final b(Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;Landroidx/lifecycle/r;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/b/a;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;",
            "Landroidx/lifecycle/r;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backAction"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;->nameTv:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object p3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object p3

    :goto_0
    if-nez p3, :cond_1

    sget p3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_no_login:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p3

    :cond_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;->avatarIv:Lcn/mucang/android/image/view/MucangCircleImageView;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getGender()I

    move-result p3

    if-ne p3, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    sget p3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->icon_default_male:I

    goto :goto_3

    :cond_5
    sget p3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->icon_default_female:I

    .line 7
    :goto_3
    invoke-virtual {p2, v0, p3}, Lcn/mucang/android/image/view/MucangImageView;->d(Ljava/lang/String;I)V

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;->closeIv:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;->closeIv:Landroid/widget/TextView;

    const-string p3, "closeIv"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_38:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p2, p5, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->h(Landroid/widget/TextView;II)V

    .line 10
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;->closeIv:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/c;

    invoke-direct {p3, p6}, Lcn/mucang/android/jiakaoyi/teachingk2/c;-><init>(Lkotlin/jvm/b/a;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    .line 11
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/b;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b;-><init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;)V

    invoke-virtual {p2, p1, p3}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public static final c(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;Landroidx/lifecycle/m;Z)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 2
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;ZLkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final d(Lkotlin/jvm/b/a;Landroid/view/View;)V
    .locals 0

    const-string p1, "$backAction"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;)V
    .locals 4

    const-string v0, "$this_init"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;->durationTv:Landroid/widget/TextView;

    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_train_duration:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_train_duration)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->time:I

    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->f(IZ)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->e(Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;)V

    return-void
.end method

.method public static synthetic g(Lkotlin/jvm/b/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->d(Lkotlin/jvm/b/a;Landroid/view/View;)V

    return-void
.end method

.method public static final h(Landroid/widget/TextView;II)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/a/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v0, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
