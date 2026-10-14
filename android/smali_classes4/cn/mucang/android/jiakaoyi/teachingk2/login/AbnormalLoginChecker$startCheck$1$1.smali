.class final Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1;->invoke(Lcn/mucang/android/facelib/y/e;)V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.login.AbnormalLoginChecker$startCheck$1$1"
    f = "AbnormalLoginChecker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->FaceLoginFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->d(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;-><init>()V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;Lcn/mucang/android/jiakaoyi/framework/camera/b;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;

    sget-object v2, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;Lcn/mucang/android/jiakaoyi/framework/camera/b;)V

    .line 6
    :goto_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->B:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;->b()I

    move-result v0

    const-string v1, "key_face_limit_pixel_v2"

    .line 7
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v6

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->l(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;Lkotlinx/coroutines/i0;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->f(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)Lkotlinx/coroutines/i0;

    move-result-object v3

    const/16 v4, 0x70

    const/16 v5, 0x70

    .line 11
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->g(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)Lcn/mucang/android/jiakaoyi/framework/camera/b;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    new-instance v8, Lcn/mucang/android/facelib/GoogleDetectorFactory;

    invoke-direct {v8}, Lcn/mucang/android/facelib/GoogleDetectorFactory;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->b(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;

    move-result-object v9

    move-object v2, v1

    .line 12
    invoke-direct/range {v2 .. v9}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;-><init>(Lkotlinx/coroutines/i0;IIILcn/mucang/android/jiakaoyi/framework/camera/b;Lcn/mucang/jiakaoyi/uilib/login/face/k;Lcn/mucang/jiakaoyi/uilib/login/face/j;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->k(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V

    .line 13
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->g()Lcn/mucang/jiakaoyi/uilib/login/face/o;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 15
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->d(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->g0(Lcn/mucang/jiakaoyi/uilib/login/face/o;)V

    .line 16
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->d(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->h0(Lcn/mucang/jiakaoyi/uilib/login/face/r;)V

    .line 17
    :cond_4
    :goto_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->n(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;Z)V

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->d(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->j0()V

    .line 19
    :goto_4
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
