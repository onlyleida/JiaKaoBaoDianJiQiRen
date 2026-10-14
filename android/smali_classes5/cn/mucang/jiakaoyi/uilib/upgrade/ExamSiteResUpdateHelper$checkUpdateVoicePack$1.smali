.class final Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;
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
    c = "cn.mucang.jiakaoyi.uilib.upgrade.ExamSiteResUpdateHelper$checkUpdateVoicePack$1"
    f = "ExamSiteResUpdateHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $examSiteId:J

.field final synthetic $mapDownloadDialog:Lcn/mucang/jiakaoyi/uilib/q/f;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(JLcn/mucang/jiakaoyi/uilib/q/f;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/jiakaoyi/uilib/q/f;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->$examSiteId:J

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->$mapDownloadDialog:Lcn/mucang/jiakaoyi/uilib/q/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Lkotlinx/coroutines/i0;Lcn/mucang/jiakaoyi/uilib/q/f;Ljava/lang/Float;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->invokeSuspend$lambda-0(Lkotlinx/coroutines/i0;Lcn/mucang/jiakaoyi/uilib/q/f;Ljava/lang/Float;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lkotlinx/coroutines/i0;Lcn/mucang/jiakaoyi/uilib/q/f;Ljava/lang/Float;)V
    .locals 6

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1$resConfig$1$1;

    const/4 v0, 0x0

    invoke-direct {v3, p1, p2, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1$resConfig$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/q/f;Ljava/lang/Float;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

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

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;

    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->$examSiteId:J

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->$mapDownloadDialog:Lcn/mucang/jiakaoyi/uilib/q/f;

    invoke-direct {v0, v1, v2, v3, p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;-><init>(JLcn/mucang/jiakaoyi/uilib/q/f;Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->L$0:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/i0;

    .line 2
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;->a:Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;

    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->$examSiteId:J

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->$mapDownloadDialog:Lcn/mucang/jiakaoyi/uilib/q/f;

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/upgrade/a;

    invoke-direct {v4, v0, v3}, Lcn/mucang/jiakaoyi/uilib/upgrade/a;-><init>(Lkotlinx/coroutines/i0;Lcn/mucang/jiakaoyi/uilib/q/f;)V

    invoke-static {p1, v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;->b(Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;JLcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v4, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-wide v6, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->$examSiteId:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 5
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    .line 6
    :cond_2
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getConfigId()J

    move-result-wide v4

    .line 7
    invoke-virtual {p1, v2, v3, v4, v5}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;->i(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Ljava/lang/String;J)V

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->d()Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    move-result-object p1

    .line 9
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getConfigId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getVersion()I

    move-result v1

    invoke-virtual {p1, v2, v3, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->b(Ljava/lang/String;Ljava/lang/Long;I)V

    .line 10
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1$1;

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->$mapDownloadDialog:Lcn/mucang/jiakaoyi/uilib/q/f;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/q/f;Lkotlin/coroutines/c;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 11
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
