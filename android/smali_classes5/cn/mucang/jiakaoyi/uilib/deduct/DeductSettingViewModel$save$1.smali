.class final Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->B(Lkotlin/jvm/b/l;)V
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
    c = "cn.mucang.jiakaoyi.uilib.deduct.DeductSettingViewModel$save$1"
    f = "DeductSettingViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->$callback:Lkotlin/jvm/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->$callback:Lkotlin/jvm/b/l;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->label:I

    if-nez v0, :cond_f

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->v()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->w()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/m/a;->h(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 3
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->k(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->k(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 9
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getDeductScore()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_4

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getDeductScore()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getDeductScore()I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_4

    const-string p1, "\u5206\u503c\u53ea\u80fd\u8bbe\u7f6e\u4e3a5\uff0c10\uff0c100"

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    const-string v1, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V

    .line 12
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 13
    :cond_5
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v2, v1, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->j(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    .line 14
    :cond_6
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 16
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->v()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v3, v4, v5}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setExamSiteId(J)V

    goto :goto_2

    .line 17
    :cond_7
    :goto_3
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "syncBatch deduct \uff1a "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 18
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/deduct/b0;->a:Lcn/mucang/jiakaoyi/uilib/deduct/b0;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->w()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcn/mucang/jiakaoyi/uilib/deduct/b0;->d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-nez p1, :cond_8

    goto :goto_5

    .line 19
    :cond_8
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 21
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->v()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v3, v4, v5}, Lcn/mucang/jiakaoyi/uilib/m/a;->u(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;J)Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 22
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->transform()Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_4

    .line 23
    :cond_9
    sget-object v4, Lcn/mucang/android/jiakaoyi/framework/tts/g;->a:Lcn/mucang/android/jiakaoyi/framework/tts/g;

    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->E(Ljava/lang/String;)V

    .line 24
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->E(Ljava/lang/String;)V

    goto :goto_4

    .line 25
    :cond_a
    :goto_5
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->l(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    const-string v1, "\u4fdd\u5b58\u6210\u529f"

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->$callback:Lkotlin/jvm/b/l;

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 28
    :cond_c
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    const-string v1, "\u4e0a\u4f20\u6263\u5206\u5230\u670d\u52a1\u5668\u5931\u8d25"

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->$callback:Lkotlin/jvm/b/l;

    if-nez p1, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :goto_6
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 31
    :cond_e
    :goto_7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    const-string v1, "\u672c\u5730\u6ca1\u6709\u67e5\u8be2\u5230\u6263\u5206\u6570\u636e"

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V

    .line 32
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 33
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
