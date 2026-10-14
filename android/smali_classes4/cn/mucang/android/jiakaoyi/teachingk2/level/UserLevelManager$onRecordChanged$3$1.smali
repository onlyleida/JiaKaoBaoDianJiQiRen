.class final Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager$onRecordChanged$3$1"
    f = "UserLevelManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $idData:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3$1;->$idData:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3$1;->$idData:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3$1;->$idData:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LevelPassModel;

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LevelPassModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LevelPassModel;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LevelPassModel;->setCode(I)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getSubCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LevelPassModel;->setSubCode(I)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getPass()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LevelPassModel;->setPass(Z)V

    .line 7
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    const/4 p1, 0x0

    aput-object v2, v1, p1

    .line 8
    invoke-static {v1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 9
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, p1

    .line 10
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/d;-><init>()V

    const-string v1, "text"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/d;->t(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
