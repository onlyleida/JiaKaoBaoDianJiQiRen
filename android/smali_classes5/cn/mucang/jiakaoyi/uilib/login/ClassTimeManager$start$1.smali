.class final Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->e(Lcn/mucang/jiakaoyi/uilib/login/n;)V
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
    c = "cn.mucang.jiakaoyi.uilib.login.ClassTimeManager$start$1"
    f = "ClassTimeManager.kt"
    l = {
        0x21
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $remainTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $timeOutCallback:Lcn/mucang/jiakaoyi/uilib/login/n;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lcn/mucang/jiakaoyi/uilib/login/n;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lcn/mucang/jiakaoyi/uilib/login/n;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->$remainTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->$timeOutCallback:Lcn/mucang/jiakaoyi/uilib/login/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 3
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

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->$remainTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->$timeOutCallback:Lcn/mucang/jiakaoyi/uilib/login/n;

    invoke-direct {v0, v1, v2, p2}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lcn/mucang/jiakaoyi/uilib/login/n;Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/i0;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/i0;

    move-object v1, p1

    move-object p1, p0

    .line 4
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->values()[Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    move-result-object v3

    iget-object v4, p1, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->$remainTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v5, p1, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->$timeOutCallback:Lcn/mucang/jiakaoyi/uilib/login/n;

    .line 6
    array-length v6, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v3, v7

    .line 7
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->a()Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_2

    iget-wide v9, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v8, v9, v10}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->nearTime(J)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 8
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->a()Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-virtual {v9, v10, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 9
    invoke-interface {v5, v8}, Lcn/mucang/jiakaoyi/uilib/login/n;->a(Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const-wide/16 v3, 0x3e8

    .line 10
    iput-object v1, p1, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->L$0:Ljava/lang/Object;

    iput v2, p1, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->label:I

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_4

    return-object v0

    .line 11
    :cond_4
    :goto_2
    iget-object v3, p1, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;->$remainTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v4, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const/16 v6, 0x3e8

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_0

    .line 12
    :cond_5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
