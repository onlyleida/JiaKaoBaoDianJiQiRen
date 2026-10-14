.class final Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->l(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
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
    c = "cn.mucang.jiakaoyi.uilib.siterule.SwitchSiteRuleViewModel$saveRuleExamSite$1"
    f = "SwitchSiteRuleViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $examSiteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field final synthetic $keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            "Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->$examSiteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->$examSiteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/siterule/h0;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/siterule/h0;-><init>()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "examSiteModel.examSiteName"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->$examSiteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/siterule/h0;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Z

    move-result p1

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->$examSiteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/siterule/h0;->n(Ljava/lang/String;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    const-string v0, "\u6dfb\u52a0\u89c4\u5219\u6210\u529f!"

    invoke-virtual {p1, v2, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->k(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    const-string v0, "\u6dfb\u52a0\u89c4\u5219\u5931\u8d25!"

    invoke-virtual {p1, v2, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6dfb\u52a0\u89c4\u5219\u5f02\u5e38\uff1a"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 12
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
