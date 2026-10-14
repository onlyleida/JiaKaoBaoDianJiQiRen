.class final Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$studentInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/i0;",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
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
    c = "cn.mucang.sundial.library.util.LoginUtil$studentSilenceLogin$1$studentInfo$1"
    f = "LoginUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;Lkotlin/coroutines/c;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$studentInfo$1;->this$0:Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$studentInfo$1;

    iget-object v0, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$studentInfo$1;->this$0:Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;

    invoke-direct {p1, v0, p2}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$studentInfo$1;-><init>(Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$studentInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$studentInfo$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$studentInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$studentInfo$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcn/mucang/sundial/library/http/StudentApi;

    invoke-direct {p1}, Lcn/mucang/sundial/library/http/StudentApi;-><init>()V

    iget-object v0, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$studentInfo$1;->this$0:Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;

    iget-object v1, v0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$idCardNo:Ljava/lang/String;

    iget-object v2, v0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$authToken:Ljava/lang/String;

    iget-object v0, v0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$xyToken:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcn/mucang/sundial/library/http/StudentApi;->getStudentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerStudentInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getGlobalCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$studentInfo$1;->this$0:Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;

    iget v1, v1, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$courseSubject:I

    invoke-static {p1, v1, v0}, Lcn/mucang/sundial/library/util/KtxsKt;->toStudentInfo(Lcn/mucang/sundial/library/entity/ServerStudentInfo;ILcn/mucang/sundial/android/db/entity/StudentInfo;)Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object p1

    .line 6
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveStudent(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    const-string v0, "-Sundial \u83b7\u53d6\u5b66\u5458\u4fe1\u606f"

    .line 7
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
