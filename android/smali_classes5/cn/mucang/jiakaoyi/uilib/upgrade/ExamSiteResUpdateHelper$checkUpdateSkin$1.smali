.class final Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;->c(JLkotlin/jvm/b/a;)V
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
    c = "cn.mucang.jiakaoyi.uilib.upgrade.ExamSiteResUpdateHelper$checkUpdateSkin$1"
    f = "ExamSiteResUpdateHelper.kt"
    l = {
        0x5f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $examSiteId:J

.field label:I


# direct methods
.method constructor <init>(JLkotlin/jvm/b/a;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;->$examSiteId:J

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;->$callback:Lkotlin/jvm/b/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;

    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;->$examSiteId:J

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;->$callback:Lkotlin/jvm/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;-><init>(JLkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_1

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
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;->a:Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;

    iget-wide v3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;->$examSiteId:J

    invoke-static {p1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;->a(Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;J)Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-wide v5, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-wide v7, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;->$examSiteId:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    const/4 v4, 0x1

    :cond_3
    :goto_0
    if-eqz v4, :cond_5

    .line 7
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, ""

    .line 8
    :cond_4
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getConfigId()J

    move-result-wide v5

    .line 9
    invoke-virtual {p1, v3, v4, v5, v6}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;->f(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Ljava/lang/String;J)V

    .line 10
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getConfigId()J

    move-result-wide v3

    long-to-int p1, v3

    const-string v1, "keyExamSkinType"

    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 11
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1$1;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;->$callback:Lkotlin/jvm/b/a;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1$1;-><init>(Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 12
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
