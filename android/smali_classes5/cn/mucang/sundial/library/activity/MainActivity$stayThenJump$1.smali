.class final Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/MainActivity;->stayThenJump()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/MainActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "\u68c0\u6d4b\u65f6\u95f4\u662f\u5426\u540c\u6b65\uff0c\u83b7\u53d6IMEI\u662f\u5426\u6b63\u5e38"

    .line 2
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    :goto_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v2

    const-string v3, "SundialManager.getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/mucang/sundial/android/SundialManager;->getLastTimeStamps()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 4
    iget-object v2, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/activity/BaseActivity;->getBaseViewModel()Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel;->getBaseInfo()V

    const-string v2, "\u68c0\u6d4b\u5b8c\u6bd5"

    .line 5
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    const-string v2, "\u521d\u59cb\u5316\u53c2\u6570"

    .line 6
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 7
    iget-object v2, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity;

    invoke-static {v2}, Lcn/mucang/sundial/library/activity/MainActivity;->access$initHost(Lcn/mucang/sundial/library/activity/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity;

    invoke-static {v2}, Lcn/mucang/sundial/library/activity/MainActivity;->access$initDefaultParams(Lcn/mucang/sundial/library/activity/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\u5f39\u7a97"

    .line 8
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity;

    invoke-static {v0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1;-><init>(Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;Lkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_1
    const-string v2, "socket\u670d\u52a1\u8fde\u63a5\u521d\u59cb\u5316"

    .line 10
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/sundial/android/SundialManager;->init()V

    const/16 v2, 0x7d0

    int-to-long v2, v2

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sub-long/2addr v2, v4

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    .line 13
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    :goto_2
    new-instance v0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$3;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$3;-><init>(Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    const-wide/16 v2, 0x64

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0
.end method
