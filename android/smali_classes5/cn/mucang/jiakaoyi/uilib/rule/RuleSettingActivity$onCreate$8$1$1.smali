.class final Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "cn.mucang.jiakaoyi.uilib.rule.RuleSettingActivity$onCreate$8$1$1"
    f = "RuleSettingActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $changeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;


# direct methods
.method constructor <init>(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;->$changeList:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;->invokeSuspend$lambda-0(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->g(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->H(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;Lkotlin/jvm/b/l;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;->$changeList:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;-><init>(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;->$changeList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->c:Lcn/mucang/jiakaoyi/uilib/rule/dialog/m$a;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;->$changeList:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "supportFragmentManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/rule/s;

    invoke-direct {v4, v3}, Lcn/mucang/jiakaoyi/uilib/rule/s;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)V

    invoke-virtual {p1, v1, v0, v2, v4}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m$a;->b(Ljava/util/List;ZLandroidx/fragment/app/FragmentManager;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u6ca1\u6709\u4fee\u6539\u8fc7\u6570\u636e"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
