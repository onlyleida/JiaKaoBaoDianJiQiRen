.class final Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/facelib/FaceLoginManager;->z()V
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
    c = "cn.mucang.android.facelib.FaceLoginManager$initLocalRecognizer$2"
    f = "FaceLoginManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 0
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

    new-instance p1, Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$2;

    invoke-direct {p1, p2}, Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$2;-><init>(Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$2;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->d()Lcn/mucang/android/facelib/q;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    new-instance p1, Lcn/mucang/android/facelib/q;

    invoke-direct {p1}, Lcn/mucang/android/facelib/q;-><init>()V

    invoke-static {p1}, Lcn/mucang/android/facelib/FaceLoginManager;->q(Lcn/mucang/android/facelib/q;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->n()Lkotlinx/coroutines/i0;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$2$1;

    const/4 p1, 0x0

    invoke-direct {v3, p1}, Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$2$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 6
    :goto_0
    sget-object p1, Lcn/mucang/android/facelib/o;->a:Lcn/mucang/android/facelib/o$a;

    invoke-virtual {p1}, Lcn/mucang/android/facelib/o$a;->h()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->d()Lcn/mucang/android/facelib/q;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/facelib/q;->f()V

    .line 8
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
