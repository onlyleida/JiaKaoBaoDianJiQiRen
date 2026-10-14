.class final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;->n(Landroidx/appcompat/app/d;J)V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.TeachAcceptanceImpl$initAndStart$1"
    f = "TeachAcceptanceImpl.kt"
    l = {
        0x67
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/d;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;Landroidx/appcompat/app/d;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;",
            "Landroidx/appcompat/app/d;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->$activity:Landroidx/appcompat/app/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->$activity:Landroidx/appcompat/app/d;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;Landroidx/appcompat/app/d;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object v11, v0

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
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->label:I

    invoke-static {v3, v1, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;->C(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;Ljava/util/HashMap;Ljava/util/HashMap;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v11, p1

    .line 7
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;->z(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 8
    :goto_1
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "\u6559\u5b66\u6570\u636e\u4e3a\u7a7a"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->$activity:Landroidx/appcompat/app/d;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 11
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 12
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    const-wide/16 v2, 0x0

    .line 13
    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 14
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;->y(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;)Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$a;

    move-result-object v5

    .line 15
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;->x(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;)Lcn/mucang/android/jiakaoyi/engine/f/a;

    move-result-object v6

    .line 16
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;->A(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object v7

    .line 17
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;->B(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object v8

    .line 18
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;->w(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;)Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    move-result-object v9

    const/4 v12, 0x2

    move-object v3, v0

    move-object v10, v1

    .line 19
    invoke-direct/range {v3 .. v12}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;Ljava/util/Map;Ljava/util/Map;I)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->t(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$initAndStart$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/g;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/g;-><init>(Ljava/util/Map;)V

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;->E(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/g;)V

    .line 21
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
