.class final Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->a([BIIIIJI)V
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
    c = "cn.mucang.jiakaoyi.sundial.client.FrameCallback$onFrame$1"
    f = "FrameCallback.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:[B

.field final synthetic $height:I

.field final synthetic $width:I

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;[BIILkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;",
            "[BII",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->$data:[B

    iput p3, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->$width:I

    iput p4, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->$height:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 6
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

    new-instance p1, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->$data:[B

    iget v3, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->$width:I

    iget v4, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->$height:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;-><init>(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;[BIILkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->c(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "sundial_temp.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcn/mucang/jiakaoyi/sundial/b/a;->a:Lcn/mucang/jiakaoyi/sundial/b/a$a;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->$data:[B

    iget v4, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->$width:I

    iget v5, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->$height:I

    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->d(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;)Z

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcn/mucang/jiakaoyi/sundial/b/a$a;->b(Ljava/io/File;[BIIZ)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->b(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->e(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;)Lkotlin/jvm/b/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;->this$0:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

    invoke-static {p1, v1}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->f(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;Z)V

    .line 8
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
