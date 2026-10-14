.class final Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->z()V
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
    c = "cn.mucang.jiakaoyi.uilib.deduct.DeductSettingViewModel$loadStep$1"
    f = "DeductSettingViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->w()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/g;->b(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 5
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->m(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/List;

    move-result-object v1

    new-instance v8, Lcn/mucang/jiakaoyi/uilib/model/i;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/mucang/jiakaoyi/uilib/model/i;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;ZZILkotlin/jvm/internal/o;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->m(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/i;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcn/mucang/jiakaoyi/uilib/model/i;->e(Z)V

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->x()Landroidx/lifecycle/z;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->m(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->m(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/i;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/i;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->o(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 9
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
