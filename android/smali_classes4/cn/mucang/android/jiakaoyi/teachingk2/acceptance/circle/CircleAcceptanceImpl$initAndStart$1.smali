.class final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;->n(Landroidx/appcompat/app/d;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.CircleAcceptanceImpl$initAndStart$1"
    f = "CircleAcceptanceImpl.kt"
    l = {
        0x95
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/d;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;",
            "Landroidx/appcompat/app/d;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->$activity:Landroidx/appcompat/app/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->invokeSuspend$lambda-1(Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->invokeSuspend$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;Landroid/view/View;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;->v(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;)V

    .line 2
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;->D(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-1(Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object p3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;->getBrakeMap()Ljava/util/HashMap;

    move-result-object p3

    :goto_0
    invoke-static {p3}, Lcn/mucang/android/core/utils/g;->e(Ljava/util/Map;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;->w(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;)Ljava/util/HashMap;

    move-result-object p3

    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;->getBrakeMap()Ljava/util/HashMap;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3
    :cond_2
    iget-object p3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;

    if-nez p3, :cond_3

    move-object p3, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;->getFaultMap()Ljava/util/HashMap;

    move-result-object p3

    :goto_2
    invoke-static {p3}, Lcn/mucang/android/core/utils/g;->e(Ljava/util/Map;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;->x(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;)Ljava/util/HashMap;

    move-result-object p3

    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;

    if-nez v1, :cond_4

    move-object v1, v0

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;->getFaultMap()Ljava/util/HashMap;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 5
    :cond_5
    iget-object p3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;

    if-nez p3, :cond_6

    move-object p3, v0

    goto :goto_4

    :cond_6
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;->getGpsDurations()Ljava/util/List;

    move-result-object p3

    :goto_4
    invoke-static {p3}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;->y(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;)Ljava/util/List;

    move-result-object p3

    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;

    if-nez v1, :cond_7

    move-object v1, v0

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;->getGpsDurations()Ljava/util/List;

    move-result-object v1

    :goto_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_8
    iget-object p3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;

    if-nez p3, :cond_9

    move-object p3, v0

    goto :goto_6

    :cond_9
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;->getTriggerBoundarySet()Ljava/util/HashSet;

    move-result-object p3

    :goto_6
    invoke-static {p3}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 8
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;->C(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;)Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/f;

    move-result-object p3

    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;

    if-nez v1, :cond_a

    move-object v1, v0

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;->getTriggerBoundarySet()Ljava/util/HashSet;

    move-result-object v1

    :goto_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/f;->f(Ljava/util/HashSet;)V

    .line 9
    :cond_b
    iget-object p3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;

    if-nez p3, :cond_c

    move-object p3, v0

    goto :goto_8

    :cond_c
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;->getGpsModelList()Ljava/util/List;

    move-result-object p3

    :goto_8
    invoke-static {p3}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 10
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;->z(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 11
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;->z(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;)Ljava/util/List;

    move-result-object p3

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;

    if-nez p0, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;->getGpsModelList()Ljava/util/List;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_e
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;->D(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->$activity:Landroidx/appcompat/app/d;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 5
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1$1;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;

    const/4 v5, 0x0

    invoke-direct {v3, p1, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Lkotlin/coroutines/c;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 6
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;->A(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 7
    :goto_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->$activity:Landroidx/appcompat/app/d;

    new-instance v10, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/h;

    invoke-direct {v6, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;)V

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/g;

    invoke-direct {v8, v0, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/g;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;)V

    const/4 v9, 0x0

    const-string v3, "\u6e29\u99a8\u63d0\u793a"

    const-string v4, "\u5f53\u524d\u6709\u8dd1\u5708\u6682\u5b58\u6570\u636e\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    const-string v5, "\u91cd\u65b0\u5f00\u59cb"

    const-string v7, "\u7ee7\u7eed"

    move-object v2, v10

    .line 10
    invoke-direct/range {v2 .. v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    invoke-direct {p1, v1, v10}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 12
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->$activity:Landroidx/appcompat/app/d;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;->D(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;)V

    .line 13
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
