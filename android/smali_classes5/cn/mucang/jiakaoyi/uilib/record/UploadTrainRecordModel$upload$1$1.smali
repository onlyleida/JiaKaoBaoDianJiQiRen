.class final Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
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
    c = "cn.mucang.jiakaoyi.uilib.record.UploadTrainRecordModel$upload$1$1"
    f = "UploadTrainRecord.kt"
    l = {
        0x16
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $changeStudent:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

.field final synthetic $inExam:Z

.field final synthetic $ruleExamSiteId:J

.field final synthetic $studentId:Ljava/lang/String;

.field final synthetic $userId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

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
            "Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$userId:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$studentId:Ljava/lang/String;

    iput-boolean p3, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$inExam:Z

    iput-wide p4, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$ruleExamSiteId:J

    iput-object p6, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$changeStudent:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 9
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

    new-instance v8, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$userId:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$studentId:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$inExam:Z

    iget-wide v4, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$ruleExamSiteId:J

    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$changeStudent:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLcn/mucang/jiakaoyi/uilib/record/TrainStatus;Lkotlin/coroutines/c;)V

    iput-object p1, v8, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/d;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->invoke(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->label:I

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

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/d;

    .line 4
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/i/e;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/i/e;-><init>()V

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$userId:Ljava/lang/String;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$studentId:Ljava/lang/String;

    iget-boolean v6, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$inExam:Z

    iget-wide v7, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$ruleExamSiteId:J

    iget-object v9, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->$changeStudent:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    invoke-virtual/range {v3 .. v9}, Lcn/mucang/jiakaoyi/uilib/i/e;->p(Ljava/lang/String;Ljava/lang/String;ZJLcn/mucang/jiakaoyi/uilib/record/TrainStatus;)Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadTrainRecordModel$upload$1$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/d;->emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
