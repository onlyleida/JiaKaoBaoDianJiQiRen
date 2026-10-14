.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0017\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/SwitchStudentDialog$StudentItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/SwitchStudentDialog;)V",
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
.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;->t(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;->s(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;->r(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Landroid/view/View;)V

    return-void
.end method

.method private static final r(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Landroid/view/View;)V
    .locals 0

    const-string p2, "$item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->i(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    const-string p0, "SwitchStudentFunc"

    const/4 p1, 0x0

    const/4 p2, 0x2

    .line 3
    invoke-static {p0, p1, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final s(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Landroid/view/View;)V
    .locals 0

    const-string p2, "$item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->i(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;->studentRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_1
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Landroid/view/View;)V
    .locals 6

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    const-string p0, "getCurrentActivity()"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->SWITCH_LOGIN:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/login/model/SwitchLoginData;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getXyToken()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/login/model/SwitchLoginData;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->j(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Lcn/mucang/android/jiakaoyi/framework/h/b;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;->q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    return-void
.end method

.method public q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->avatarIv:Lcn/mucang/android/image/view/MucangCircleImageView;

    .line 2
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getGender()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->icon_default_male:I

    goto :goto_0

    :cond_0
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->icon_default_female:I

    .line 4
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/image/view/MucangImageView;->d(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->nameTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getMucangId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->tipsTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->funcTv:Landroid/widget/TextView;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_sign_out:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->funcTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->funcTv:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->shape_008aff_r100:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->funcTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/e0;

    invoke-direct {v2, p2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/e0;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->tipsTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->funcTv:Landroid/widget/TextView;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_sign_out:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->funcTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->funcTv:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->shape_008aff_r100:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 17
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->funcTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/d0;

    invoke-direct {v2, p2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/d0;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/c0;

    invoke-direct {v1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/c0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method
