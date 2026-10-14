.class final Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lkotlin/coroutines/c;)Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.ui.TeachProgrammeManagerActivity$enableProgramme$2"
    f = "TeachProgrammeManagerActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $item:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

.field final synthetic $result:Lkotlin/jvm/internal/Ref$BooleanRef;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/b/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/b/a;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->id:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/b/a;->m(J)Z

    move-result v0

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
