.class final Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->onBackPressed()V
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
    c = "cn.mucang.jiakaoyi.uilib.rule.RuleSettingActivity$onBackPressed$1"
    f = "RuleSettingActivity.kt"
    l = {
        0xf0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->g(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->w()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    move-object v3, v1

    goto :goto_1

    .line 5
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    .line 8
    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/f;->c(Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;)Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_3
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1$1;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;

    invoke-direct {v4, v3, v5, v1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1$1;-><init>(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;->label:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 10
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_5
    const-string p1, "viewModel"

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
