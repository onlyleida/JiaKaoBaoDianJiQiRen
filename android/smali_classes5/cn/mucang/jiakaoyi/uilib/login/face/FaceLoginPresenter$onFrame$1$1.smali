.class final Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$onFrame$1$1"
    f = "FaceLoginPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $byteArray:[B

.field final synthetic $height:I

.field final synthetic $width:I

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;[BIILkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;",
            "[BII",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->$byteArray:[B

    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->$width:I

    iput p4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->$height:I

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->$byteArray:[B

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->$width:I

    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->$height:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;[BIILkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->$byteArray:[B

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->$width:I

    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1$1;->$height:I

    invoke-static {p1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->b(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;[BII)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4eba\u8138\u6d41\u7a0b\u8017\u8d39\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "faceLogin"

    invoke-static {v4, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 7
    :cond_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
