.class final Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
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
    c = "cn.mucang.jiakaoyi.uilib.record.UploadTrainRecordModel$upload$1"
    f = "UploadTrainRecord.kt"
    l = {
        0x1e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $changeStudent:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

.field final synthetic $inExam:Z

.field final synthetic $ruleExamSiteId:J

.field final synthetic $studentId:Ljava/lang/String;

.field final synthetic $userId:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJLcn/mucang/jiakaoyi/uilib/record/TrainStatus;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJ",
            "Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$userId:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$studentId:Ljava/lang/String;

    iput-boolean p3, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$inExam:Z

    iput-wide p4, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$ruleExamSiteId:J

    iput-object p6, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$changeStudent:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 8
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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$userId:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$studentId:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$inExam:Z

    iget-wide v4, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$ruleExamSiteId:J

    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$changeStudent:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLcn/mucang/jiakaoyi/uilib/record/TrainStatus;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$userId:Ljava/lang/String;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$studentId:Ljava/lang/String;

    iget-boolean v6, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$inExam:Z

    iget-wide v7, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$ruleExamSiteId:J

    iget-object v9, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->$changeStudent:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    const/4 v10, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLcn/mucang/jiakaoyi/uilib/record/TrainStatus;Lkotlin/coroutines/c;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/f;->t(Lkotlin/jvm/b/p;)Lkotlinx/coroutines/flow/c;

    move-result-object p1

    const-wide/16 v3, 0x2

    .line 5
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$2;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$2;-><init>(Lkotlin/coroutines/c;)V

    invoke-static {p1, v3, v4, v1}, Lkotlinx/coroutines/flow/f;->C(Lkotlinx/coroutines/flow/c;JLkotlin/jvm/b/p;)Lkotlinx/coroutines/flow/c;

    move-result-object p1

    .line 6
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$3;

    invoke-direct {v1, v5}, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$3;-><init>(Lkotlin/coroutines/c;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/f;->y(Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/p;)Lkotlinx/coroutines/flow/c;

    move-result-object p1

    .line 7
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$4;

    invoke-direct {v1, v5}, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$4;-><init>(Lkotlin/coroutines/c;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/f;->e(Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/q;)Lkotlinx/coroutines/flow/c;

    move-result-object p1

    .line 8
    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/f;->g(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
