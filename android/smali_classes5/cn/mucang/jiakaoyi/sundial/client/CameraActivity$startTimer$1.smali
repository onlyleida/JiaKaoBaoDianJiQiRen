.class final Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->r()V
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
    c = "cn.mucang.jiakaoyi.sundial.client.CameraActivity$startTimer$1"
    f = "CameraActivity.kt"
    l = {
        0x7b,
        0x81
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $time:Lkotlin/jvm/internal/Ref$IntRef;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;ILkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;",
            "I",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;

    iput p2, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->$limit:I

    iput-object p3, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->$time:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 4
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

    new-instance v0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;

    iget v2, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->$limit:I

    iget-object v3, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->$time:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0, v1, v2, v3, p2}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;-><init>(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;ILkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget v1, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->I$0:I

    iget-object v5, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/i0;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/i0;

    move-object v5, p1

    move-object p1, p0

    .line 4
    :cond_3
    invoke-static {v5}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5
    iget-object v1, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->k(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;)Landroid/media/SoundPool;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->m(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual/range {v6 .. v12}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v1

    .line 6
    :goto_0
    iget-object v6, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v6

    check-cast v6, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v6, v6, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->tvTimer:Landroid/widget/TextView;

    iget v7, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->$limit:I

    iget-object v8, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->$time:Lkotlin/jvm/internal/Ref$IntRef;

    iget v8, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v6, 0x3e8

    .line 7
    iput-object v5, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->L$0:Ljava/lang/Object;

    iput v1, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->I$0:I

    iput v4, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->label:I

    invoke-static {v6, v7, p1}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_5

    return-object v0

    .line 8
    :cond_5
    :goto_1
    iget-object v6, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->$time:Lkotlin/jvm/internal/Ref$IntRef;

    iget v7, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v7, v4

    iput v7, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 9
    iget v6, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->$limit:I

    if-ne v7, v6, :cond_3

    .line 10
    iget-object v4, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v4, v4, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->tvTimer:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v4, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->k(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;)Landroid/media/SoundPool;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    iget-object v4, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->l(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual/range {v5 .. v11}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 12
    :goto_2
    iget-object v4, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->k(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;)Landroid/media/SoundPool;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v4, v1}, Landroid/media/SoundPool;->stop(I)V

    :goto_3
    const-wide/16 v4, 0x1f4

    .line 13
    iput-object v2, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->label:I

    invoke-static {v4, v5, p1}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    return-object v0

    .line 14
    :cond_8
    :goto_4
    iget-object p1, p1, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->j(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;)Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->g()V

    goto :goto_5

    :cond_9
    const-string p1, "frameCallback"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_a
    :goto_5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
