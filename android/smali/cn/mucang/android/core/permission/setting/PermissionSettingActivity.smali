.class public final Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\"\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u0012\u0010\u001a\u001a\u00020\u00122\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0018\u0010\u001d\u001a\u00020\u00122\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;",
        "Lcn/mucang/android/core/config/MucangActivity;",
        "()V",
        "adapter",
        "Lme/drakeet/multitype/MultiTypeAdapter;",
        "defaultPermissions",
        "",
        "Lcn/mucang/android/core/permission/setting/PermissionInfo;",
        "protocol",
        "",
        "viewBinding",
        "Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "getStatName",
        "initData",
        "",
        "initView",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "refreshData",
        "permissions",
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


# instance fields
.field private final a:Lkotlin/f;

.field private b:Lme/drakeet/multitype/d;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/core/permission/setting/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;

    new-instance v2, Lf/a/a/a/u/e;

    invoke-direct {v2, p0}, Lf/a/a/a/u/e;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->a:Lkotlin/f;

    .line 4
    new-instance v0, Lme/drakeet/multitype/d;

    invoke-direct {v0}, Lme/drakeet/multitype/d;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->b:Lme/drakeet/multitype/d;

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->c:Ljava/lang/String;

    return-object p0
.end method

.method private final h()Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->a:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;

    return-object v0
.end method

.method private static final i(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;)V
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

    const-string v2, "jk_authority_reason"

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/permission/setting/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 3
    :cond_2
    new-instance v1, Lcn/mucang/android/core/permission/setting/g;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/core/permission/setting/g;-><init>(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PermissionSettingActivity"

    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private final initData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->o(Ljava/util/List;)V

    .line 2
    new-instance v0, Lcn/mucang/android/core/permission/setting/h;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/permission/setting/h;-><init>(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final initView()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->h()Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/core/permission/setting/i;

    invoke-direct {v2, p0}, Lcn/mucang/android/core/permission/setting/i;-><init>(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  \u4e3a\u5411\u60a8\u63d0\u4f9b\u66f4\u597d\u7684\u7528\u6237\u4f53\u9a8c\uff0c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/utils/p;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\u5728\u7279\u5b9a\u573a\u666f\u53ef\u80fd\u9700\u8981\u5411\u60a8\u7533\u8bf7\u4ee5\u4e0b\u624b\u673a\u7cfb\u7edf\u6743\u9650"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/framework/core/R$drawable;->core_privacy_tip_tv:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    new-instance v3, Lcn/mucang/android/core/widget/a;

    invoke-direct {v3, v2}, Lcn/mucang/android/core/widget/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    const/16 v4, 0x21

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7
    iget-object v2, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;->tvNotes:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->b:Lme/drakeet/multitype/d;

    new-instance v2, Lcn/mucang/android/core/permission/setting/o;

    new-instance v3, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity$a;

    invoke-direct {v3, p0}, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity$a;-><init>(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;)V

    invoke-direct {v2, v3}, Lcn/mucang/android/core/permission/setting/o;-><init>(Lcn/mucang/android/core/permission/setting/o$a;)V

    .line 10
    const-class v3, Lcn/mucang/android/core/permission/setting/PermissionInfo;

    invoke-virtual {v1, v3, v2}, Lme/drakeet/multitype/d;->f(Ljava/lang/Class;Lme/drakeet/multitype/b;)V

    .line 11
    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->b:Lme/drakeet/multitype/d;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private static final j(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->o(Ljava/util/List;)V

    return-void
.end method

.method private static final k(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->j(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->i(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->k(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method private final o(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/core/permission/setting/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->b:Lme/drakeet/multitype/d;

    invoke-virtual {v0, p1}, Lme/drakeet/multitype/d;->h(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->b:Lme/drakeet/multitype/d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6743\u9650\u8bbe\u7f6e\u9875"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->b:Lme/drakeet/multitype/d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->h()Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;->getRoot()Landroid/widget/LinearLayout;

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
    const-string v1, "default_permission_config"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    :goto_0
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->d:Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "protocol"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->c:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->d:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p1, 0x1

    :goto_4
    if-nez p1, :cond_7

    iget-object p1, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->c:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_8

    :cond_7
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "\u8bf7\u6839\u636e\u5f53\u524d\u9879\u76ee\u63d0\u4f9b\u9ed8\u8ba4\u6743\u9650\u5217\u8868\u548c\u9690\u79c1\u534f\u8bae"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 7
    :cond_8
    invoke-direct {p0}, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->initView()V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->initData()V

    return-void
.end method
