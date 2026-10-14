.class final Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->m(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;)V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightViewModel$deleteAssemble$1"
    f = "LightViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $item:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
            "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->$item:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->$item:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, ",lights:"

    const-string v1, ",name:"

    const-string v2, "\u5220\u9664\u706f\u5149\u7ec4\u5408 id:"

    const-string v3, "\u5220\u9664\u5931\u8d25"

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->label:I

    if-nez v4, :cond_3

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;-><init>()V

    .line 3
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->$item:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;->q(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v4

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->$item:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/model/f;->t(Ljava/lang/Object;)V

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->$item:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getLights()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 7
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->$item:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getLights()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    .line 9
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->$item:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->$item:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->$item:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->$item:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    const-string v1, "\u5220\u9664\u6210\u529f"

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {v0, p1, v3}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 14
    :catch_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {v0, p1, v3}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V

    .line 15
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
