.class final Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/flow/d<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        ""
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.res.boundary.SwitchSiteDialog$setData$3$1"
    f = "SwitchSiteDialog.kt"
    l = {
        0x3f,
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
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

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;-><init>(Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/d;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->invoke(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->I$0:I

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/d;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p1, v4

    move-object v4, p0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->I$0:I

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/d;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p1, v4

    move-object v4, p0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/d;

    const/16 v1, 0xa

    move-object v4, p0

    :cond_3
    add-int/lit8 v5, v1, -0x1

    .line 4
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object p1, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->L$0:Ljava/lang/Object;

    iput v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->I$0:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->label:I

    invoke-interface {p1, v1, v4}, Lkotlinx/coroutines/flow/d;->emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move v1, v5

    :goto_0
    const-wide/16 v5, 0x3e8

    .line 5
    iput-object p1, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->L$0:Ljava/lang/Object;

    iput v1, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->I$0:I

    iput v2, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog$setData$3$1;->label:I

    invoke-static {v5, v6, v4}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    if-le v3, v1, :cond_3

    .line 6
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
