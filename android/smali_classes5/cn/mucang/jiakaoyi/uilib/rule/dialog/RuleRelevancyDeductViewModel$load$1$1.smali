.class final Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->m(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
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
    c = "cn.mucang.jiakaoyi.uilib.rule.dialog.RuleRelevancyDeductViewModel$load$1$1"
    f = "RuleRelevancyDeductViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field final synthetic $split:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->$split:Ljava/util/List;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->$split:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->j(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->$split:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->o(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;JILjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/m/a;->f(Ljava/lang/String;J)Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    .line 7
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;-><init>()V

    .line 9
    invoke-virtual {v3, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->copy(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;)V

    .line 10
    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->j(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->l()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 13
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
