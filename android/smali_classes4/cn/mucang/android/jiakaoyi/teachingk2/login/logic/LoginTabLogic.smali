.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000bH\u0002J\u0014\u0010\u0016\u001a\u00020\u00142\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0018J\u0012\u0010\u0019\u001a\u00020\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0006\u0010\u001c\u001a\u00020\u0014J\u0006\u0010\u001d\u001a\u00020\u0014J\u0006\u0010\u001e\u001a\u00020\u0014J\u001a\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000b2\u0008\u0008\u0002\u0010 \u001a\u00020!H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R2\u0010\t\u001a&\u0012\u0004\u0012\u00020\u000b\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000c0\nj\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000c`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;",
        "Landroid/view/View$OnClickListener;",
        "activity",
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;)V",
        "getActivity",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;",
        "logicList",
        "Ljava/util/HashMap;",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
        "Lcn/mucang/android/jiakaoyi/k3setting/login/BaseLogic;",
        "Lkotlin/collections/HashMap;",
        "loginTypeList",
        "",
        "selectType",
        "getViewBinding",
        "()Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;",
        "createLogic",
        "",
        "loginMethod",
        "init",
        "loginType",
        "",
        "onClick",
        "v",
        "Landroid/view/View;",
        "onDestroy",
        "onPause",
        "onResume",
        "select",
        "fromUser",
        "",
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;

.field private final b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

.field private c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
            "Lcn/mucang/android/jiakaoyi/k3setting/d/a<",
            "*>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->d:Ljava/util/HashMap;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->e:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->e:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;)Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    return-object p0
.end method

.method private final c(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->cardLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    const-string v2, "viewBinding.cardLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;-><init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->scanLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;

    const-string v2, "viewBinding.scanLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->QR_CODE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;-><init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->faceLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    const-string v2, "viewBinding.faceLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic$createLogic$logic$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic$createLogic$logic$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic$createLogic$logic$2;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic$createLogic$logic$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;)V

    .line 6
    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;-><init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/q;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->timingLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginTimingBinding;

    const-string v2, "viewBinding.timingLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/q;-><init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginTimingBinding;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->f()V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->d:Ljava/util/HashMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final j(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->tabLl:Landroid/widget/LinearLayout;

    const-string v1, "viewBinding.tabLl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/h;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lkotlin/sequences/h;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-eqz v4, :cond_0

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ne p1, v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/d/a;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->j(Z)V

    .line 5
    :goto_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/d/a;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->h(Z)V

    .line 6
    :goto_4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    return-void
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->j(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Z)V

    return-void
.end method


# virtual methods
.method public final d()Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;

    return-object v0
.end method

.method public final e()Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    return-object v0
.end method

.method public final f(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "loginType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    .line 2
    sget-object v2, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->COACH_QR_CODE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-eq v0, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->e()Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->coachIv:Landroid/widget/TextView;

    const-string v2, "viewBinding.coachIv"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    const/16 v2, 0x8

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->tabBg:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->tabLl:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->singleTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->singleTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->e:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->e:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->c(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V

    goto :goto_2

    .line 12
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->tabBg:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->tabLl:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->singleTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->e:Ljava/util/List;

    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->d()Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->layout_login_tab:I

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->e()Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->tabLl:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    .line 18
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->e()Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->tabLl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 22
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->c(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V

    goto :goto_1

    .line 23
    :cond_3
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->e:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    .line 24
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->tabLl:Landroid/widget/LinearLayout;

    const-string v3, "viewBinding.tabLl"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/h;

    move-result-object v2

    .line 25
    invoke-interface {v2}, Lkotlin/sequences/h;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-eqz v5, :cond_4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-ne p1, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_3

    .line 27
    :cond_6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "logicList.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/d/a;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/d/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->j(Z)V

    :goto_0
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/d/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->i(Lcn/mucang/android/jiakaoyi/k3setting/d/a;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    instance-of v3, v2, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-eqz v3, :cond_1

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-ne v0, v2, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    goto :goto_2

    .line 2
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    :goto_2
    const-string p1, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.login.model.LoginType"

    invoke-static {v1, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    const/4 p1, 0x1

    invoke-direct {p0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->j(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Z)V

    return-void
.end method
