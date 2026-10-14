.class final Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->y(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
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
    c = "cn.mucang.jiakaoyi.sundial.client.SundialClient$interceptLogin$1"
    f = "SundialClient.kt"
    l = {
        0x118,
        0x122,
        0x15b,
        0x161
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $back:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isK2:Z

.field final synthetic $next:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $xyToken:Ljava/lang/String;

.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ZLkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;Z",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$xyToken:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$next:Lkotlin/jvm/b/a;

    iput-object p4, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$back:Lkotlin/jvm/b/a;

    iput-boolean p5, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$isK2:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static final synthetic access$invokeSuspend$loginStudent(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->invokeSuspend$loginStudent(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final invokeSuspend$loginStudent(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcn/mucang/sundial/library/entity/ServerStudentInfo;",
            ">;Z",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->d()Ljava/io/File;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v0

    .line 2
    :goto_1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->m(Ljava/io/File;)V

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;

    move-object v7, v0

    move-object/from16 v8, p3

    move v9, p2

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v7 .. v12}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;ZZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    const-string v3, ""

    const-string v4, ""

    move-object v2, p0

    move-object v5, p1

    move v7, p2

    move-object v8, v0

    .line 4
    invoke-static/range {v2 .. v8}, Lcn/mucang/sundial/library/Sundial;->startStudentLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/mucang/sundial/library/SundialCallBack;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 7
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

    new-instance p1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$xyToken:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$next:Lkotlin/jvm/b/a;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$back:Lkotlin/jvm/b/a;

    iget-boolean v5, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$isK2:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;-><init>(Ljava/lang/String;Landroid/app/Activity;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ZLkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->label:I

    const-string v3, ""

    const-string v4, "interceptLogin"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v10, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    iget-wide v1, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->J$0:J

    iget v5, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->I$0:I

    iget-object v6, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v6

    move v6, v5

    move-object/from16 v5, p1

    goto/16 :goto_8

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget v2, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->I$0:I

    iget-object v6, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object v14, v6

    move-object/from16 v6, p1

    goto/16 :goto_6

    :cond_2
    iget v1, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->I$0:I

    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto/16 :goto_4

    :cond_3
    iget-wide v11, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->J$0:J

    iget-object v2, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object v14, v13

    move-object/from16 v13, p1

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 5
    iget-object v11, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$xyToken:Ljava/lang/String;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    :goto_0
    if-eqz v11, :cond_6

    move-object v14, v2

    goto :goto_2

    .line 6
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 7
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v13

    new-instance v14, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$isStudent$1;

    iget-object v15, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$xyToken:Ljava/lang/String;

    invoke-direct {v14, v15, v8}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$isStudent$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/c;)V

    iput-object v2, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->L$1:Ljava/lang/Object;

    iput-wide v11, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->J$0:J

    iput v10, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->label:I

    invoke-static {v13, v14, v0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v1, :cond_7

    return-object v1

    :cond_7
    move-object v14, v2

    .line 8
    :goto_1
    move-object v15, v13

    check-cast v15, Lcn/mucang/sundial/library/entity/ServerStudentInfo;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v11

    invoke-static/range {v15 .. v16}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "time-isSundialStudent:"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object v11, Lkotlin/v;->a:Lkotlin/v;

    .line 11
    iput-object v13, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 12
    iget-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_d

    const-string v4, "interceptLogin\uff1a\u4e0d\u662f\u8ba1\u65f6\u5b66\u5458"

    .line 13
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v5, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$1;

    invoke-direct {v5, v8}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$1;-><init>(Lkotlin/coroutines/c;)V

    iput-object v8, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->L$1:Ljava/lang/Object;

    iput v2, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->I$0:I

    iput v7, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->label:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_9

    return-object v1

    :cond_9
    move v1, v2

    :goto_4
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "interceptLogin\uff1a\u9700\u8981\u7b7e\u9000"

    .line 15
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    iget-object v2, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$activity:Landroid/app/Activity;

    new-instance v4, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$a;

    if-eqz v1, :cond_a

    const/4 v9, 0x1

    :cond_a
    iget-object v1, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$next:Lkotlin/jvm/b/a;

    iget-object v5, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$back:Lkotlin/jvm/b/a;

    invoke-direct {v4, v9, v1, v5}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$a;-><init>(ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    invoke-static {v2, v3, v4}, Lcn/mucang/sundial/library/Sundial;->startStudentLogout(Landroid/content/Context;Ljava/lang/String;Lcn/mucang/sundial/library/SundialCallBack;)V

    goto :goto_5

    :cond_b
    const-string v2, "interceptLogin\uff1a\u4e0d\u9700\u8981\u7b7e\u9000"

    .line 17
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 18
    sget-object v2, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->A()Lkotlinx/coroutines/flow/b2;

    move-result-object v2

    if-eqz v1, :cond_c

    const/4 v9, 0x1

    :cond_c
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/b2;->setValue(Ljava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$next:Lkotlin/jvm/b/a;

    invoke-interface {v1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    .line 20
    :goto_5
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    return-object v1

    :cond_d
    const-string v7, "interceptLogin\uff1a\u662f\u8ba1\u65f6\u5b66\u5458\uff0c\u8d70\u540e\u9762\u7684\u903b\u8f91"

    .line 21
    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    new-instance v11, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$3;

    invoke-direct {v11, v8}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$3;-><init>(Lkotlin/coroutines/c;)V

    iput-object v14, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->L$1:Ljava/lang/Object;

    iput v2, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->I$0:I

    iput v6, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->label:I

    invoke-static {v7, v11, v0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_e

    return-object v1

    :cond_e
    :goto_6
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v1, "interceptLogin\uff1a\u9700\u8981\u5b66\u5458\u7b7e\u5230\uff0c\u8df3\u8f6c\u5230\u7b7e\u5230\u9875"

    .line 23
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 24
    iget-object v11, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$activity:Landroid/app/Activity;

    iget-object v12, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$xyToken:Ljava/lang/String;

    iget-boolean v13, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$isK2:Z

    if-eqz v2, :cond_f

    const/4 v15, 0x1

    goto :goto_7

    :cond_f
    const/4 v15, 0x0

    :goto_7
    iget-object v1, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$next:Lkotlin/jvm/b/a;

    iget-object v2, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$back:Lkotlin/jvm/b/a;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-static/range {v11 .. v17}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->invokeSuspend$loginStudent(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    goto/16 :goto_a

    .line 25
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 26
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v11

    new-instance v12, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$isDiffStudent$1;

    iget-object v13, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$xyToken:Ljava/lang/String;

    invoke-direct {v12, v13, v8}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$isDiffStudent$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/c;)V

    iput-object v14, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->I$0:I

    iput-wide v6, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->J$0:J

    iput v5, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->label:I

    invoke-static {v11, v12, v0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_11

    return-object v1

    :cond_11
    move-object/from16 v16, v14

    move-wide/from16 v19, v6

    move v6, v2

    move-wide/from16 v1, v19

    .line 27
    :goto_8
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time-isDiffLoginStudent:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "interceptLogin\uff1a\u4e0d\u662f\u540c\u4e00\u4e2a\u5b66\u5458\u53bb\u7b7e\u9000"

    .line 30
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 31
    iget-object v1, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$activity:Landroid/app/Activity;

    new-instance v2, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;

    iget-object v12, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$back:Lkotlin/jvm/b/a;

    iget-object v14, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$xyToken:Ljava/lang/String;

    iget-boolean v15, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$isK2:Z

    if-eqz v6, :cond_12

    const/16 v17, 0x1

    goto :goto_9

    :cond_12
    const/16 v17, 0x0

    :goto_9
    iget-object v4, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$next:Lkotlin/jvm/b/a;

    move-object v11, v2

    move-object v13, v1

    move-object/from16 v18, v4

    invoke-direct/range {v11 .. v18}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;-><init>(Lkotlin/jvm/b/a;Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;)V

    invoke-static {v1, v3, v2}, Lcn/mucang/sundial/library/Sundial;->startStudentLogout(Landroid/content/Context;Ljava/lang/String;Lcn/mucang/sundial/library/SundialCallBack;)V

    goto :goto_a

    :cond_13
    const-string v1, "interceptLogin\uff1a\u662f\u540c\u4e00\u4e2a\u5b66\u5458\u5219\u76f4\u63a5\u8fdb\u5165\u9996\u9875"

    .line 32
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 33
    sget-object v1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->A()Lkotlinx/coroutines/flow/b2;

    move-result-object v1

    if-eqz v6, :cond_14

    const/4 v9, 0x1

    :cond_14
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/b2;->setValue(Ljava/lang/Object;)V

    .line 34
    iget-object v1, v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->$next:Lkotlin/jvm/b/a;

    invoke-interface {v1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    .line 35
    :goto_a
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    return-object v1
.end method
