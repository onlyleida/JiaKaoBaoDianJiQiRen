.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/signal/c/f/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 +2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001+B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\rH\u0002J\u001a\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0017H\u0002J\u001a\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0017H\u0002J\u001a\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0017H\u0002J\u0008\u0010\u001a\u001a\u00020\u000fH\u0002J0\u0010\u001b\u001a*\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0006j\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008`\nH\u0002J\u000e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u000e\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\"H\u0002J\u0008\u0010#\u001a\u00020\u000fH\u0014J\u0008\u0010$\u001a\u00020\u000fH\u0014J\u0010\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\'H\u0017J\u0008\u0010(\u001a\u00020\u000fH\u0002J\u0008\u0010)\u001a\u00020\u000fH\u0002J\u0008\u0010*\u001a\u00020\u000fH\u0003R6\u0010\u0005\u001a*\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0006j\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008`\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "itemMap",
        "Ljava/util/HashMap;",
        "",
        "",
        "",
        "Lkotlin/collections/HashMap;",
        "menuList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
        "changeConfig",
        "",
        "config",
        "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;",
        "view",
        "Landroid/widget/ImageView;",
        "changeMenu",
        "clickItem",
        "createCmdCheckData",
        "Lkotlin/Pair;",
        "createSafeArgumentsData",
        "createSafeModeData",
        "doRefreshSafeList",
        "getItemMap",
        "getMenuList",
        "getSafeConfigList",
        "getStatName",
        "",
        "handleSwitch",
        "open",
        "",
        "init",
        "onDestroy",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "refreshCmd",
        "refreshSafeMode",
        "setMode",
        "Companion",
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
.field public static final d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$a;

.field private static e:Lkotlinx/coroutines/t1;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->w()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->b:Ljava/util/List;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->H()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->G()V

    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/h;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->F()V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->z(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/h;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->B(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/h;)V

    return-void
.end method

.method public static synthetic E(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->A(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;)V

    return-void
.end method

.method private final F()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->r()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->c:Ljava/util/HashMap;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v3, v2, Lcom/drakeet/multitype/f;

    if-eqz v3, :cond_1

    move-object v4, v2

    check-cast v4, Lcom/drakeet/multitype/f;

    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    const-string v0, "itemMap"

    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    :cond_5
    return-void
.end method

.method private final G()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->u()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final H()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->modeTv:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5b89\u5168\u6a21\u5f0f\uff1a"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic m()Lkotlinx/coroutines/t1;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->e:Lkotlinx/coroutines/t1;

    return-object v0
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->y(Z)V

    return-void
.end method

.method public static final synthetic o(Lkotlinx/coroutines/t1;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->e:Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final p(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$changeConfig$1;

    invoke-direct {v1, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$changeConfig$1;-><init>(Landroid/widget/ImageView;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)V

    invoke-static {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private final q(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 4
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->x()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->c:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v1

    .line 9
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v3, v2, Lcom/drakeet/multitype/f;

    if-eqz v3, :cond_3

    move-object v4, v2

    check-cast v4, Lcom/drakeet/multitype/f;

    :cond_3
    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 10
    :goto_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_6
    const-string p1, "itemMap"

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 12
    :cond_7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_3
    return-void
.end method

.method private final r()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;-><init>()V

    const-string v2, "\u5239\u8f66"

    .line 3
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setText(Ljava/lang/String;)V

    .line 4
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->safe_ic_shache:I

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setResId(I)V

    .line 5
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setBtn(Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$createCmdCheckData$1$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$createCmdCheckData$1$1;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setBtnClick(Lkotlin/jvm/b/a;)V

    .line 7
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;-><init>()V

    const-string v2, "\u89e3\u5239"

    .line 10
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setText(Ljava/lang/String;)V

    .line 11
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->safe_ic_jiechu:I

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setResId(I)V

    .line 12
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setBtn(Ljava/lang/String;)V

    .line 13
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$createCmdCheckData$2$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$createCmdCheckData$2$1;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setBtnClick(Lkotlin/jvm/b/a;)V

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;-><init>()V

    const-string v2, "\u7184\u706b"

    .line 17
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setText(Ljava/lang/String;)V

    .line 18
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->safe_ic_jinneng:I

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setResId(I)V

    .line 19
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setBtn(Ljava/lang/String;)V

    .line 20
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$createCmdCheckData$3$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$createCmdCheckData$3$1;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setBtnClick(Lkotlin/jvm/b/a;)V

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;-><init>()V

    const-string v2, "\u89e3\u9664\u7184\u706b"

    .line 23
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setText(Ljava/lang/String;)V

    .line 24
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->safe_ic_speed:I

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setResId(I)V

    .line 25
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setBtn(Ljava/lang/String;)V

    .line 26
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$createCmdCheckData$4$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$createCmdCheckData$4$1;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setBtnClick(Lkotlin/jvm/b/a;)V

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;-><init>()V

    const-string v2, "\u5173\u95ed\u5b89\u516830s\uff08\u5173\u95ed\u540e\uff0c\u65e0\u6cd5\u7ee7\u7eed\u5239\u8f66\uff0c30s\u540e\u81ea\u52a8\u89e3\u9664\uff09"

    .line 29
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setText(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setResId(I)V

    const-string v2, "\u5173\u95ed"

    .line 31
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setBtn(Ljava/lang/String;)V

    .line 32
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$createCmdCheckData$5$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$createCmdCheckData$5$1;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;->setBtnClick(Lkotlin/jvm/b/a;)V

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;-><init>()V

    const-string v2, "\u5173\u95ed\u5b89\u5168\uff08\u5173\u95ed\u540e\uff0c\u9047\u5230\u969c\u788d\u7269\u540e\u5c06\u65e0\u6cd5\u89e6\u53d1\u5239\u8f66\uff09"

    .line 35
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setText(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/u;->a()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setChecked(Z)V

    .line 37
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$createCmdCheckData$6$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$createCmdCheckData$6$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setOnClick(Lkotlin/jvm/b/l;)V

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final s()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;

    .line 2
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->HelpTeachAdvanceTime:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)V

    const-string v3, "\u8f85\u52a9\u6559\u5b66\u63d0\u524d\u5239\u8f66\u65f6\u95f4(\u5355\u4f4d:\u79d2)"

    .line 3
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;->setDesc(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->f()F

    move-result v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;->setValue(F)V

    .line 5
    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 6
    invoke-static {v1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 7
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final t()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->x()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final u()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lcom/drakeet/multitype/f;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/drakeet/multitype/f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->x()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method

.method private final v()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->r()Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->t()Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->s()Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Lkotlin/collections/l0;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private final w()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    .line 1
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v4, "\u5b89\u5168\u547d\u4ee4"

    .line 3
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 4
    sget-object v4, Lkotlin/v;->a:Lkotlin/v;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/4 v4, 0x2

    .line 6
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v5, "\u5b89\u5168\u6a21\u5f0f"

    .line 7
    invoke-virtual {v2, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    aput-object v2, v1, v3

    .line 8
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    .line 9
    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v0, "\u5b89\u5168\u53c2\u6570"

    .line 10
    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 11
    invoke-static {v1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final x()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->f()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v2

    const-string v3, "km/h"

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;-><init>()V

    const-string v4, "\u662f\u5426\u663e\u793a\u96f7\u8fbe\u63a2\u6d4b\u6548\u679c\u56fe"

    .line 5
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setText(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getShowRadar()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setChecked(Z)V

    .line 7
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$getSafeConfigList$1$1;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$getSafeConfigList$1$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;)V

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setOnClick(Lkotlin/jvm/b/l;)V

    .line 8
    sget-object v4, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;-><init>()V

    const-string v4, "\u662f\u5426\u542f\u7528\u96f7\u8fbe\u8b66\u62a5\u58f0"

    .line 11
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setText(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getRingRadar()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setChecked(Z)V

    .line 13
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$getSafeConfigList$2$1;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$getSafeConfigList$2$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;)V

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setOnClick(Lkotlin/jvm/b/l;)V

    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;-><init>()V

    const-string v4, "\u884c\u9a76\u4e2d\u53cc\u624b\u79bb\u5f00\u65b9\u5411\u76d8"

    .line 16
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setText(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getWheel()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setChecked(Z)V

    .line 18
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$getSafeConfigList$3$1;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$getSafeConfigList$3$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;)V

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setOnClick(Lkotlin/jvm/b/l;)V

    .line 19
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;-><init>()V

    const-string v4, "\u79d1\u4e8c\u9879\u76ee\u5185\u524d\u8fdb\u9650\u5236\u8f66\u901f\uff1a"

    .line 21
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setText(Ljava/lang/String;)V

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getSpeed()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setValue(Ljava/lang/String;)V

    .line 23
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;-><init>()V

    const-string v4, "\u79d1\u4e8c\u9879\u76ee\u5916\u524d\u8fdb\u9650\u5236\u8f66\u901f\uff1a"

    .line 25
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setText(Ljava/lang/String;)V

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getProjectOutSpeed()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setValue(Ljava/lang/String;)V

    .line 27
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;-><init>()V

    const-string v4, "\u79d1\u4e09\u9650\u901f\uff1a"

    .line 29
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setText(Ljava/lang/String;)V

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getK3Speed()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setValue(Ljava/lang/String;)V

    .line 31
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;-><init>()V

    const-string v4, "\u79d1\u4e09\u76f4\u7ebf\u884c\u9a76\u548c\u52a0\u51cf\u6863\u9879\u76ee\u9650\u901f\uff1a"

    .line 33
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setText(Ljava/lang/String;)V

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getK3StraightSpeed()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setValue(Ljava/lang/String;)V

    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_0
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;-><init>()V

    const-string v4, "\u6a21\u62df\u9ad8\u901f\u9879\u76ee\u9650\u901f\uff1a"

    .line 37
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setText(Ljava/lang/String;)V

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getB2HighSpeed()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setValue(Ljava/lang/String;)V

    .line 39
    sget-object v4, Lkotlin/v;->a:Lkotlin/v;

    .line 40
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;-><init>()V

    const-string v4, "\u5012\u8f66\u9650\u901f\uff1a"

    .line 42
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setText(Ljava/lang/String;)V

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getBackSpeed()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setValue(Ljava/lang/String;)V

    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;-><init>()V

    const-string v4, "\u5176\u4ed6\u533a\u57df\u9650\u901f\uff1a"

    .line 46
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setText(Ljava/lang/String;)V

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getB2Speed()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setValue(Ljava/lang/String;)V

    .line 48
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_0
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;-><init>()V

    const-string v4, "\u662f\u5426\u542f\u7528\u9650\u5236\u8f66\u901f"

    .line 50
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setText(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getHardwareSpeedBrake()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setChecked(Z)V

    .line 52
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$getSafeConfigList$11$1;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$getSafeConfigList$11$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;)V

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setOnClick(Lkotlin/jvm/b/l;)V

    .line 53
    sget-object v4, Lkotlin/v;->a:Lkotlin/v;

    .line 54
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/p;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;-><init>()V

    const-string v4, "\u540e\u9000\u9650\u5236\u8f66\u901f\uff1a"

    .line 57
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setText(Ljava/lang/String;)V

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getBackSpeed()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setValue(Ljava/lang/String;)V

    .line 59
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;-><init>()V

    const-string v3, "\u884c\u9a76\u4e2d\u5f00\u8f66\u95e8\u5239\u8f66\uff1a"

    .line 61
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setText(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getHardwareDoorBrake()Z

    move-result v3

    const-string v4, "\u5f00\u542f"

    const-string v5, "\u5173\u95ed"

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setValue(Ljava/lang/String;)V

    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;-><init>()V

    const-string v3, "\u884c\u9a76\u4e2d\u89e3\u5b89\u5168\u5e26\u5239\u8f66\uff1a"

    .line 65
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setText(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getHardwareBeltBrake()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setValue(Ljava/lang/String;)V

    .line 67
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;-><init>()V

    const-string v3, "\u540e\u6e9c\u5b89\u5168\u8ddd\u79bb\uff1a"

    .line 69
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setText(Ljava/lang/String;)V

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getHouLiu()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "cm"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setValue(Ljava/lang/String;)V

    .line 71
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private final y(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$handleSwitch$1;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$handleSwitch$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Z)V

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->d(ZLkotlin/jvm/b/l;)V

    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5b89\u5168\u53c2\u6570\u7ba1\u7406"

    return-object v0
.end method

.method protected init()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->v()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->c:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u5b89\u5168\u53c2\u6570\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/u;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/u;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$init$2$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$init$2$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;)V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;-><init>(Lkotlin/jvm/b/l;)V

    .line 8
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-virtual {v7, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->b:Ljava/util/List;

    invoke-virtual {v7, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 10
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 11
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/e;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/e;-><init>()V

    .line 15
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;

    invoke-virtual {v7, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 16
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/SafeArgumentsItemBinder;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/SafeArgumentsItemBinder;-><init>()V

    .line 17
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;

    invoke-virtual {v7, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 18
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/h;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/h;-><init>()V

    .line 19
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;

    invoke-virtual {v7, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 20
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/g;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/g;-><init>()V

    .line 21
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;

    invoke-virtual {v7, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 22
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->H()V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;

    .line 24
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/w;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/w;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/h;

    .line 25
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/v;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/v;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 26
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 27
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->b:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->speedTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8f66\u901f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x7801

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->rpmTv:Landroid/widget/TextView;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "\u8f6c\u901f\uff1a"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
