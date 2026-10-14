.class final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->init()V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.login.ui.FaceRegisterActivity$init$1"
    f = "FaceRegisterActivity.kt"
    l = {
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;

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
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1$1;-><init>(Lkotlin/coroutines/c;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lcn/mucang/android/facelib/y/e;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Lcn/mucang/android/facelib/y/e;)V

    const-string p1, "tensorflow\u521d\u59cb\u5316\u6210\u529f"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;)V

    .line 7
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
