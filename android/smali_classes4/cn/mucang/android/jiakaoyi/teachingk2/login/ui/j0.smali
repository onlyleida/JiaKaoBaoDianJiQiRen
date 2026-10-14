.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/SwitchStudentDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "StudentItemBinder",
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
.field private a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;

    return-object p0
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;->e(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;->d(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    const-string p0, "SwitchStudentLogin"

    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, p1, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x447f0000    # 1020.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x44f00000    # 1920.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, -0x2

    .line 9
    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;->studentRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;->studentRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v8, Lcom/drakeet/multitype/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 12
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;)V

    .line 13
    const-class v3, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    invoke-virtual {v8, v3, v2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->l()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v2

    :cond_1
    invoke-virtual {v8, v2}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 15
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 16
    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;->closeIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/b0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/b0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;->loginTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/a0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/a0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
