.class public final Lf/a/a/a/n/d/e;
.super Lf/a/a/a/n/d/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/a/n/d/e$a;,
        Lf/a/a/a/n/d/e$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0002\u0016\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/android/core/permission/dialog/PermissionGuideDialog;",
        "Lcn/mucang/android/core/permission/dialog/SafeDialogFragment;",
        "()V",
        "dismissListener",
        "Lcn/mucang/android/core/permission/callbacks/PermissionsDialogCallback;",
        "model",
        "Lcn/mucang/android/core/permission/model/PermissionGuideModel;",
        "initView",
        "",
        "view",
        "Landroid/view/View;",
        "onCancel",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDismiss",
        "Companion",
        "PermissionAdapter",
        "core-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lf/a/a/a/n/d/e$a;


# instance fields
.field private a:Lcn/mucang/android/core/permission/model/PermissionGuideModel;

.field private b:Lf/a/a/a/n/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf/a/a/a/n/d/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf/a/a/a/n/d/e$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lf/a/a/a/n/d/e;->c:Lf/a/a/a/n/d/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/a/n/d/f;-><init>()V

    return-void
.end method

.method public static synthetic A(Lf/a/a/a/n/d/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lf/a/a/a/n/d/e;->u(Lf/a/a/a/n/d/e;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lf/a/a/a/n/d/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lf/a/a/a/n/d/e;->v(Lf/a/a/a/n/d/e;Landroid/view/View;)V

    return-void
.end method

.method public static final C(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/core/permission/model/PermissionGuideModel;Lf/a/a/a/n/c/b;)V
    .locals 1

    sget-object v0, Lf/a/a/a/n/d/e;->c:Lf/a/a/a/n/d/e$a;

    invoke-virtual {v0, p0, p1, p2}, Lf/a/a/a/n/d/e$a;->a(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/core/permission/model/PermissionGuideModel;Lf/a/a/a/n/c/b;)V

    return-void
.end method

.method public static final synthetic r(Lf/a/a/a/n/d/e;Lf/a/a/a/n/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/a/n/d/e;->b:Lf/a/a/a/n/c/b;

    return-void
.end method

.method public static final synthetic s(Lf/a/a/a/n/d/e;Lcn/mucang/android/core/permission/model/PermissionGuideModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/a/n/d/e;->a:Lcn/mucang/android/core/permission/model/PermissionGuideModel;

    return-void
.end method

.method private final t(Landroid/view/View;)V
    .locals 10

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$id;->permission_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    sget v1, Lcn/mucang/android/framework/core/R$id;->permission_desc:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    sget v2, Lcn/mucang/android/framework/core/R$id;->permission_btn:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    sget v3, Lcn/mucang/android/framework/core/R$id;->permission_close:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 5
    sget v4, Lcn/mucang/android/framework/core/R$id;->tv_user_agreement:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6
    sget v5, Lcn/mucang/android/framework/core/R$id;->tv_privacy_agreement:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 7
    sget v6, Lcn/mucang/android/framework/core/R$id;->permission_recyclerview:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    sget v7, Lcn/mucang/android/framework/core/R$id;->layout_agreement:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 9
    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 10
    iget-object v7, p0, Lf/a/a/a/n/d/e;->a:Lcn/mucang/android/core/permission/model/PermissionGuideModel;

    if-nez v7, :cond_0

    goto/16 :goto_2

    .line 11
    :cond_0
    invoke-virtual {v7}, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v7}, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->getBottomDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {v7}, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const/16 v8, 0x8

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v7}, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    invoke-virtual {v7}, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->isShowClose()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :goto_1
    invoke-virtual {v7}, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    new-instance v0, Lf/a/a/a/n/d/e$b;

    invoke-direct {v0}, Lf/a/a/a/n/d/e$b;-><init>()V

    .line 21
    invoke-virtual {v7}, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->getList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v0, v9}, Lf/a/a/e/a/b/c/b;->c(Ljava/util/List;)V

    .line 22
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    :cond_3
    invoke-virtual {v7}, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->isShowAgreement()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 26
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    .line 27
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 28
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    .line 29
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    const/high16 v8, 0x41700000    # 15.0f

    invoke-static {v8}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v8

    add-int/2addr v7, v8

    .line 30
    invoke-virtual {v6, p1, v0, v1, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 31
    :goto_2
    new-instance p1, Lf/a/a/a/n/d/c;

    invoke-direct {p1, p0}, Lf/a/a/a/n/d/c;-><init>(Lf/a/a/a/n/d/e;)V

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance p1, Lf/a/a/a/n/d/d;

    invoke-direct {p1, p0}, Lf/a/a/a/n/d/d;-><init>(Lf/a/a/a/n/d/e;)V

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    new-instance p1, Lf/a/a/a/n/d/b;

    invoke-direct {p1, p0}, Lf/a/a/a/n/d/b;-><init>(Lf/a/a/a/n/d/e;)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    new-instance p1, Lf/a/a/a/n/d/a;

    invoke-direct {p1, p0}, Lf/a/a/a/n/d/a;-><init>(Lf/a/a/a/n/d/e;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final u(Lf/a/a/a/n/d/e;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lf/a/a/f/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static final v(Lf/a/a/a/n/d/e;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lf/a/a/f/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static final w(Lf/a/a/a/n/d/e;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lf/a/a/a/n/d/e;->b:Lf/a/a/a/n/c/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lf/a/a/a/n/c/b;->a(Z)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method private static final x(Lf/a/a/a/n/d/e;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lf/a/a/a/n/d/e;->b:Lf/a/a/a/n/c/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lf/a/a/a/n/c/b;->a(Z)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method public static synthetic y(Lf/a/a/a/n/d/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lf/a/a/a/n/d/e;->x(Lf/a/a/a/n/d/e;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lf/a/a/a/n/d/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lf/a/a/a/n/d/e;->w(Lf/a/a/a/n/d/e;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCancel(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lf/a/a/a/n/d/e;->b:Lf/a/a/a/n/c/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lf/a/a/a/n/c/b;->a(Z)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p3, Lcn/mucang/android/framework/core/R$layout;->core__permission_guide:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 3
    sget p2, Lcn/mucang/android/framework/core/R$id;->permission_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/high16 p3, 0x43c80000    # 400.0f

    invoke-static {p3}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    const-string p2, "view"

    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lf/a/a/a/n/d/e;->t(Landroid/view/View;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lf/a/a/a/n/d/e;->b:Lf/a/a/a/n/c/b;

    return-void
.end method
