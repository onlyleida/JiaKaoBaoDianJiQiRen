.class public Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;
.super Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008)\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u0019\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u0019\u0010\u0014\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J)\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u001d\u0010%\u001a\u00020 8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\u0018\u0010\'\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;",
        "Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;",
        "Lkotlin/v;",
        "initView",
        "()V",
        "",
        "isSoftShowing",
        "()Z",
        "initData",
        "initViewModel",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
        "onResume",
        "onPause",
        "onDestroy",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "",
        "requestCode",
        "resultCode",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Landroid/view/MotionEvent;",
        "ev",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;",
        "binding$delegate",
        "Lkotlin/f;",
        "getBinding",
        "()Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;",
        "binding",
        "Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;",
        "loginTabLogic",
        "Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final binding$delegate:Lkotlin/f;

.field private loginTabLogic:Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;

    new-instance v2, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$$special$$inlined$viewBinding$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$$special$$inlined$viewBinding$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->binding$delegate:Lkotlin/f;

    return-void
.end method

.method private final getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->binding$delegate:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;

    return-object v0
.end method

.method private final initView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->closeIv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->closeIv:Landroid/widget/TextView;

    const-string v2, "closeIv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcn/mucang/sundial/library/R$drawable;->tt__guide_ic_back:I

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/mucang/sundial/library/R$dimen;->rpx_38:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcn/mucang/sundial/library/util/KtxsKt;->setDrawableLeft(Landroid/widget/TextView;II)V

    .line 5
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->skipped:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$2;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$2;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v1, Lcn/mucang/sundial/library/util/ClickController;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcn/mucang/sundial/library/util/ClickController;-><init>(I)V

    .line 7
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->titleIv:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;

    invoke-direct {v3, v0, v1, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;-><init>(Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;Lcn/mucang/sundial/library/util/ClickController;Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;

    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->loginTabLogic:Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    new-array v2, v1, [Lcn/mucang/sundial/library/sdk/coach/LoginType;

    const/4 v3, 0x0

    .line 9
    sget-object v4, Lcn/mucang/sundial/library/sdk/coach/LoginType;->QR_CODE:Lcn/mucang/sundial/library/sdk/coach/LoginType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcn/mucang/sundial/library/sdk/coach/LoginType;->ID_CARD:Lcn/mucang/sundial/library/sdk/coach/LoginType;

    aput-object v4, v2, v3

    invoke-static {v2}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;->init(Ljava/util/List;)V

    :cond_1
    const-string v0, "\u6559\u7ec3\u5458\u767b\u5f55"

    .line 10
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v2, "SundialManager.getInstance()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->isRegister()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u8bf7\u5148\u6ce8\u518c\u7ec8\u7aef"

    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2, v1, v2}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 13
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final isSoftShowing()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "this.window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v2, "this.window.decorView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    mul-int/lit8 v0, v0, 0x2

    .line 4
    div-int/lit8 v0, v0, 0x3

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->isSoftShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0, v0}, Landroidx/core/a/a;->i(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const-string v2, "binding.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public initData()V
    .locals 0

    return-void
.end method

.method public initViewModel()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_0

    const-string p1, "\u8df3\u8f6c\u6559\u7ec3\u9875\u9762"

    .line 2
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "msg"

    .line 5
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 7
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->cardLayout:Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p2, p2, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->tvErrTip:Landroid/widget/TextView;

    const-string p3, "binding.cardLayout.tvErrTip"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const/4 p3, 0x3

    if-ne p1, p3, :cond_5

    .line 8
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    if-ne p2, v1, :cond_5

    const-string p1, "\u5173\u95ed\u767b\u5f55\u9875\u9762"

    .line 9
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->initView()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->loginTabLogic:Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->initView()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/sundial/library/activity/TopActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->loginTabLogic:Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;->onPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;->loginTabLogic:Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;->onResume()V

    :cond_0
    return-void
.end method
