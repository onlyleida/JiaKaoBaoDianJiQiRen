.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u000f\u0010\u0011B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0008H\u0014J\u0008\u0010\u000e\u001a\u00020\u0008H\u0014R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;",
        "()V",
        "menuList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
        "changeMenu",
        "",
        "clickItem",
        "getMenuList",
        "getStatName",
        "",
        "init",
        "onDestroy",
        "CheckSettingItem",
        "Companion",
        "SettingItemBinder",
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


# static fields
.field public static final c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$b;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$b;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;->b:Ljava/util/List;

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V

    return-void
.end method

.method private final k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 4
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v6, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v8, v7, v8}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    if-nez v5, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;->getCheckModuleStatus()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_4

    .line 8
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    .line 10
    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getModule()I

    move-result v9

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v10

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_3

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    .line 13
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$a;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getZhTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v7

    invoke-direct {v5, v6, v3, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 14
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v2, v1, Lcom/drakeet/multitype/f;

    if-eqz v2, :cond_7

    move-object v8, v1

    check-cast v8, Lcom/drakeet/multitype/f;

    :cond_7
    if-nez v8, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v8, v4}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 15
    :goto_5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 16
    :cond_a
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_6
    return-void
.end method

.method private final l()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    .line 2
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/16 v4, 0xa

    .line 3
    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v4, "\u5927\u8f66\u6a21\u5757"

    .line 4
    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 6
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    aput-object v3, v0, v2

    .line 7
    invoke-static {v0}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x7

    new-array v3, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    .line 8
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    .line 9
    invoke-virtual {v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v5, "\u4e3b\u63a7\u6a21\u5757"

    .line 10
    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 12
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    aput-object v4, v3, v2

    .line 13
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/4 v5, 0x2

    .line 14
    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v6, "\u91c7\u96c6\u6a21\u5757"

    .line 15
    invoke-virtual {v4, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    aput-object v4, v3, v1

    .line 17
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/4 v4, 0x3

    .line 18
    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v6, "\u8d85\u58f0\u6ce2\u6a21\u57571"

    .line 19
    invoke-virtual {v1, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    aput-object v1, v3, v5

    .line 21
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/4 v5, 0x4

    .line 22
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v6, "\u8d85\u58f0\u6ce2\u6a21\u57572"

    .line 23
    invoke-virtual {v1, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    aput-object v1, v3, v4

    .line 25
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/4 v4, 0x5

    .line 26
    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v6, "\u5b89\u5168\u6a21\u5757"

    .line 27
    invoke-virtual {v1, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    aput-object v1, v3, v5

    .line 29
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/4 v5, 0x6

    .line 30
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v6, "\u6cb9\u95e8\u6a21\u5757"

    .line 31
    invoke-virtual {v1, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    aput-object v1, v3, v4

    .line 33
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    .line 34
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v0, "AI\u6a21\u5757"

    .line 35
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    aput-object v1, v3, v5

    .line 37
    invoke-static {v3}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;Landroid/view/View;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/drakeet/multitype/f;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/z;->l(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, v0

    .line 2
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_4

    .line 3
    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$a;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$a;->b()I

    move-result v3

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleManager;->b(ILjava/lang/String;Z)V

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    goto :goto_4

    .line 5
    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$a;

    .line 6
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$a;->b()I

    move-result v3

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleManager;->b(ILjava/lang/String;Z)V

    goto :goto_3

    .line 7
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;->n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u81ea\u68c0\u6a21\u5757\u7ba1\u7406"

    return-object v0
.end method

.method protected init()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u81ea\u68c0\u6a21\u5757\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$init$2$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$init$2$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;)V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;-><init>(Lkotlin/jvm/b/l;)V

    .line 6
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-virtual {v7, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;->b:Ljava/util/List;

    invoke-virtual {v7, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 8
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;)V

    .line 14
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$a;

    invoke-virtual {v7, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 15
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;->btnCancelAll:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;->b:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleManager;->c()V

    return-void
.end method
