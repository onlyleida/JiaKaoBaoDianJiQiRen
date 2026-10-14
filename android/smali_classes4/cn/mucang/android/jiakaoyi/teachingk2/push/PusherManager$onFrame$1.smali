.class final Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a([BIIIIJI)V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$onFrame$1"
    f = "PusherManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $byteArray:[B

.field final synthetic $height:I

.field final synthetic $rotation:I

.field final synthetic $size:I

.field final synthetic $stride:I

.field final synthetic $timeUs:J

.field final synthetic $width:I

.field label:I


# direct methods
.method constructor <init>(II[BIIJILkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[BIIJI",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$width:I

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$height:I

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$byteArray:[B

    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$stride:I

    iput p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$size:I

    iput-wide p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$timeUs:J

    iput p8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$rotation:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 10
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$width:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$height:I

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$byteArray:[B

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$stride:I

    iget v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$size:I

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$timeUs:J

    iget v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$rotation:I

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;-><init>(II[BIIJILkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->label:I

    if-nez v1, :cond_b

    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->m()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->i()Ljava/text/SimpleDateFormat;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->k()Lorg/opencv/core/Mat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->k()Lorg/opencv/core/Mat;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->width()I

    move-result v1

    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$width:I

    if-eq v1, v2, :cond_2

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->k()Lorg/opencv/core/Mat;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 6
    :goto_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    new-instance v1, Lorg/opencv/core/Mat;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$height:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$width:I

    sget v4, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v1, v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(III)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->u(Lorg/opencv/core/Mat;)V

    .line 7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$byteArray:[B

    array-length v1, v1

    new-array v1, v1, [B

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->t([B)V

    .line 8
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->k()Lorg/opencv/core/Mat;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$byteArray:[B

    invoke-virtual {v1, v2, v2, v3}, Lorg/opencv/core/Mat;->put(II[B)I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 9
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->k()Lorg/opencv/core/Mat;

    move-result-object v3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->i()Ljava/text/SimpleDateFormat;

    move-result-object v1

    const/4 v11, 0x0

    if-nez v1, :cond_4

    move-object v4, v11

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 10
    :goto_2
    new-instance v5, Lorg/opencv/core/Point;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$width:I

    int-to-double v6, v1

    const-wide v12, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v6, v6, v12

    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$height:I

    int-to-double v8, v1

    const-wide v14, 0x3fb47ae147ae147bL    # 0.08

    mul-double v8, v8, v14

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v6, 0x3

    const-wide v7, 0x3fe0f5c28f5c28f6L    # 0.53

    new-instance v9, Lorg/opencv/core/Scalar;

    const-wide/16 v14, 0x0

    invoke-direct {v9, v14, v15}, Lorg/opencv/core/Scalar;-><init>(D)V

    const/4 v10, 0x3

    .line 11
    invoke-static/range {v3 .. v10}, Lorg/opencv/imgproc/Imgproc;->putText(Lorg/opencv/core/Mat;Ljava/lang/String;Lorg/opencv/core/Point;IDLorg/opencv/core/Scalar;I)V

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->k()Lorg/opencv/core/Mat;

    move-result-object v16

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->i()Ljava/text/SimpleDateFormat;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_3
    move-object/from16 v17, v11

    .line 13
    new-instance v1, Lorg/opencv/core/Point;

    iget v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$width:I

    int-to-double v3, v3

    mul-double v3, v3, v12

    iget v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$height:I

    int-to-double v5, v5

    const-wide v7, 0x3fb47ae147ae147bL    # 0.08

    mul-double v5, v5, v7

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/opencv/core/Point;-><init>(DD)V

    const/16 v19, 0x3

    const-wide v20, 0x3fe0f5c28f5c28f6L    # 0.53

    new-instance v3, Lorg/opencv/core/Scalar;

    const-wide v4, 0x406fe00000000000L    # 255.0

    invoke-direct {v3, v4, v5}, Lorg/opencv/core/Scalar;-><init>(D)V

    const/16 v23, 0x2

    move-object/from16 v18, v1

    move-object/from16 v22, v3

    .line 14
    invoke-static/range {v16 .. v23}, Lorg/opencv/imgproc/Imgproc;->putText(Lorg/opencv/core/Mat;Ljava/lang/String;Lorg/opencv/core/Point;IDLorg/opencv/core/Scalar;I)V

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->k()Lorg/opencv/core/Mat;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->j()[B

    move-result-object v3

    invoke-virtual {v1, v2, v2, v3}, Lorg/opencv/core/Mat;->get(II[B)I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 16
    :cond_7
    :goto_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->j()[B

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$byteArray:[B

    :cond_8
    move-object v3, v1

    .line 17
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c()Lcom/alivc/live/pusher/AlivcLivePusher;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_5

    .line 18
    :cond_9
    iget v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$width:I

    .line 19
    iget v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$height:I

    .line 20
    iget v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$stride:I

    .line 21
    iget v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$size:I

    .line 22
    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$timeUs:J

    .line 23
    iget v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;->$rotation:I

    .line 24
    invoke-virtual/range {v2 .. v10}, Lcom/alivc/live/pusher/AlivcLivePusher;->inputStreamVideoData([BIIIIJI)V

    .line 25
    :cond_a
    :goto_5
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    return-object v1

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
