.class final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;->k(JLjava/util/List;)V
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
    c = "cn.mucang.android.jiakaoyi.mapcollect.manager.map.ExamModeSettingModel$saveSelectPath$1"
    f = "ExamModeSettingModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $examSiteId:J

.field label:I


# direct methods
.method constructor <init>(JLjava/util/List;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;->$examSiteId:J

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;->$content:Ljava/util/List;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;->$examSiteId:J

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;->$content:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;-><init>(JLjava/util/List;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/b/a/a;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/b/a/a;-><init>()V

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;->$examSiteId:J

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel$saveSelectPath$1;->$content:Ljava/util/List;

    invoke-virtual {p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/b/a/a;->n(JLjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u4fdd\u5b58\u6210\u529f"

    goto :goto_0

    :cond_0
    const-string p1, "\u4fdd\u5b58\u5931\u8d25"

    .line 3
    :goto_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
