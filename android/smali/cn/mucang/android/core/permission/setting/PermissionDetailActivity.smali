.class public final Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/permission/setting/PermissionDetailActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000cH\u0002J\u0012\u0010\u0012\u001a\u00020\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;",
        "Lcn/mucang/android/core/config/MucangActivity;",
        "()V",
        "count",
        "",
        "viewBinding",
        "Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "clickSafeInfoText",
        "",
        "it",
        "Landroid/view/View;",
        "getStatName",
        "",
        "initData",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
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
.field public static final c:Lcn/mucang/android/core/permission/setting/PermissionDetailActivity$a;


# instance fields
.field private final a:Lkotlin/f;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->c:Lcn/mucang/android/core/permission/setting/PermissionDetailActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;

    new-instance v2, Lf/a/a/a/u/e;

    invoke-direct {v2, p0}, Lf/a/a/a/u/e;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->a:Lkotlin/f;

    return-void
.end method

.method private final g(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->h()Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;

    move-result-object p1

    .line 2
    iget v0, p0, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->b:I

    .line 3
    iget-object v1, p1, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->ivFold:Landroid/widget/ImageView;

    int-to-float v0, v0

    const/high16 v2, 0x43340000    # 180.0f

    mul-float v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 4
    iget-object v0, p1, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->ivFold:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 5
    iget-object v0, p1, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->ivFold:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvProtectWayExpand:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvProtectWayFold:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvProtectWayFold:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvProtectWayExpand:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final h()Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->a:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;

    return-object v0
.end method

.method private static final i(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/core/permission/setting/n;

    invoke-direct {v0}, Lcn/mucang/android/core/permission/setting/n;-><init>()V

    sget v1, Lcn/mucang/android/framework/core/R$string;->core__permission_config_version:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jk_infoSafe_text"

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/permission/setting/n;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/core/permission/setting/d;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/core/permission/setting/d;-><init>(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PermissionDetailActivity"

    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final initData()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/permission/setting/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/permission/setting/b;-><init>(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final j(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->h()Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvProtectWayFold:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->h()Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvProtectWayExpand:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->q(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->i(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;)V

    return-void
.end method

.method public static synthetic m(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->t(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->j(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->r(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->s(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->g(Landroid/view/View;)V

    return-void
.end method

.method private static final r(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final s(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/z;->c(Landroid/content/Context;)V

    return-void
.end method

.method private static final t(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6743\u9650\u8bbe\u7f6e\u8be6\u60c5\u9875"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->h()Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "permission_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    const-string v2, "permission_reason"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "protocol"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_2
    invoke-direct {p0}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->h()Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;

    move-result-object v2

    .line 7
    iget-object v3, v2, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvTitle:Landroid/widget/TextView;

    if-nez p1, :cond_3

    const-string v4, "\u6743\u9650\u8bbe\u7f6e"

    goto :goto_3

    :cond_3
    move-object v4, p1

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v3, v2, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvTitleReason:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e3a\u4ec0\u4e48\u9700\u8981\u83b7\u53d6\u6211\u7684"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\u6743\u9650\uff1f"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, v2, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvReason:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, v2, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvSafeInfoTitle:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/core/permission/setting/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/permission/setting/a;-><init>(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, v2, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/core/permission/setting/e;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/permission/setting/e;-><init>(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, v2, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvGoSet:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/core/permission/setting/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/permission/setting/f;-><init>(Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, v2, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvPrivacy:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/core/permission/setting/c;

    invoke-direct {v1, v0}, Lcn/mucang/android/core/permission/setting/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-direct {p0}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->initData()V

    return-void
.end method
