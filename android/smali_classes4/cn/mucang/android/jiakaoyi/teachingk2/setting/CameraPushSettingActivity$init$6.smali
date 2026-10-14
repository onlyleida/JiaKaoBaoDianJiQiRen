.class final Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->init()V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.setting.CameraPushSettingActivity$init$6"
    f = "CameraPushSettingActivity.kt"
    l = {
        0x6b,
        0x73
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $sourceAi:Z

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;ZLkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;",
            "Z",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->$sourceAi:Z

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->$sourceAi:Z

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;ZLkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6$result$1;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6$result$1;-><init>(Lkotlin/coroutines/c;)V

    iput v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, p1

    :goto_1
    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;

    const/4 p1, 0x0

    if-nez v2, :cond_6

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 6
    :cond_6
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;->getType()I

    move-result v1

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_8

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p1, v3}, Lcn/mucang/android/core/widget/StateLayout;->setState(I)V

    .line 8
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;

    invoke-direct {p1, v4}, Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;-><init>(Z)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    .line 9
    iput v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->label:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 10
    :cond_7
    :goto_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->$sourceAi:Z

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Z)V

    goto :goto_5

    :cond_8
    if-nez v2, :cond_a

    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 11
    :cond_a
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;->getType()I

    move-result v0

    if-nez v0, :cond_9

    :goto_4
    const/4 p1, 0x5

    if-eqz v4, :cond_b

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->setState(I)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    const-string v0, "\u5f53\u524d\u8003\u573a\u4ec5\u652f\u6301\u8424\u77f3\u6444\u50cf\u5934\uff0c\u524d\u5f80\u8424\u77f3\u540e\u53f0\u67e5\u770b"

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/widget/StateLayout;->setEmptyText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 14
    :cond_b
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->setState(I)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    const-string v0, "\u8bf7\u68c0\u67e5\uff1a1\u3001\u7f51\u7edc\u662f\u5426\u6b63\u5e38   2\u3001\u8bbe\u5907\u662f\u5426\u6ce8\u518c\u7ed1\u5b9a"

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/widget/StateLayout;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
