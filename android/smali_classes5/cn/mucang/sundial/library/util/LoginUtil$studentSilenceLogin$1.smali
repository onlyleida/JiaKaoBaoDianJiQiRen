.class final Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/LoginUtil;->studentSilenceLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/mucang/sundial/library/SundialCallBack;)V
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
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/v;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.sundial.library.util.LoginUtil$studentSilenceLogin$1"
    f = "LoginUtil.kt"
    l = {
        0xf1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $authToken:Ljava/lang/String;

.field final synthetic $callBack:Lcn/mucang/sundial/library/SundialCallBack;

.field final synthetic $courseSubject:I

.field final synthetic $idCardNo:Ljava/lang/String;

.field final synthetic $photoPath:Ljava/lang/String;

.field final synthetic $xyToken:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/mucang/sundial/library/SundialCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/c;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$photoPath:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    iput-object p3, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$idCardNo:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$authToken:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$xyToken:Ljava/lang/String;

    iput p6, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$courseSubject:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 8
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;

    iget-object v1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$photoPath:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    iget-object v3, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$idCardNo:Ljava/lang/String;

    iget-object v4, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$authToken:Ljava/lang/String;

    iget-object v5, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$xyToken:Ljava/lang/String;

    iget v6, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$courseSubject:I

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;-><init>(Ljava/lang/String;Lcn/mucang/sundial/library/SundialCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_0

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
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$photoPath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "\u8ba1\u65f6\u5b66\u5458\u7167\u7247\u4e0d\u5b58\u5728"

    .line 5
    invoke-static {p1, v5, v3, v5}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    const-string p1, "-Sundial \u8ba1\u65f6\u5b66\u5458\u7167\u7247\u4e0d\u5b58\u5728"

    .line 6
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    invoke-interface {p1, v2}, Lcn/mucang/sundial/library/SundialCallBack;->onResult(Z)V

    .line 8
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 9
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$studentInfo$1;

    invoke-direct {v1, p0, v5}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$studentInfo$1;-><init>(Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;Lkotlin/coroutines/c;)V

    iput v4, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    :goto_0
    check-cast p1, Lcn/mucang/sundial/android/db/entity/StudentInfo;

    if-nez p1, :cond_4

    const-string p1, "\u83b7\u53d6\u8ba1\u65f6\u5b66\u5458\u4fe1\u606f\u5931\u8d25"

    .line 11
    invoke-static {p1, v5, v3, v5}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    const-string p1, "-Sundial \u83b7\u53d6\u8ba1\u65f6\u5b66\u5458\u4fe1\u606f\u5931\u8d25"

    .line 12
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    invoke-interface {p1, v2}, Lcn/mucang/sundial/library/SundialCallBack;->onResult(Z)V

    .line 14
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 15
    :cond_4
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    sget-object v1, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v2, Lcn/mucang/sundial/android/eventbus/event/StudentLoginResponseEvent;

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v2

    .line 17
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 18
    new-instance v4, Landroidx/lifecycle/i0$b;

    new-instance v6, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$1;

    invoke-direct {v6, p0, v3, v2}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$1;-><init>(Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/lifecycle/i0;)V

    invoke-direct {v4, v2, v6}, Landroidx/lifecycle/i0$b;-><init>(Landroidx/lifecycle/i0;Landroidx/lifecycle/a0;)V

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 19
    check-cast v4, Landroidx/lifecycle/i0$b;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/LiveData;->m(Landroidx/lifecycle/a0;)V

    .line 20
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/i0$b;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/i0;->p(Landroidx/lifecycle/i0$b;)V

    .line 21
    const-class v2, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v1

    .line 22
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 23
    new-instance v3, Landroidx/lifecycle/i0$b;

    new-instance v4, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;

    move-object v6, v4

    move-object v7, p0

    move-object v8, v2

    move-object v9, v1

    move-object v10, v0

    move-object v11, p1

    invoke-direct/range {v6 .. v11}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;-><init>(Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/lifecycle/i0;Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    invoke-direct {v3, v1, v4}, Landroidx/lifecycle/i0$b;-><init>(Landroidx/lifecycle/i0;Landroidx/lifecycle/a0;)V

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 24
    check-cast v3, Landroidx/lifecycle/i0$b;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->m(Landroidx/lifecycle/a0;)V

    .line 25
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/i0$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/i0;->p(Landroidx/lifecycle/i0$b;)V

    .line 26
    new-instance v1, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$3;

    invoke-direct {v1, p0, p1, v0}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$3;-><init>(Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;Lcn/mucang/sundial/android/db/entity/StudentInfo;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v1}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    .line 27
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
