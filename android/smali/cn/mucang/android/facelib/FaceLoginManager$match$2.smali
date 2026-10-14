.class final Lcn/mucang/android/facelib/FaceLoginManager$match$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/facelib/FaceLoginManager;->E(Lcn/mucang/android/facelib/y/e$a;Lcn/mucang/jiakaoyi/uilib/login/face/m;)Z
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
    c = "cn.mucang.android.facelib.FaceLoginManager$match$2"
    f = "FaceLoginManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $loginData:Lcn/mucang/android/facelib/model/NonPerceiveLoginData;

.field final synthetic $xyUserModel:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/facelib/model/NonPerceiveLoginData;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
            "Lcn/mucang/android/facelib/model/NonPerceiveLoginData;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/facelib/FaceLoginManager$match$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/facelib/FaceLoginManager$match$2;->$xyUserModel:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iput-object p2, p0, Lcn/mucang/android/facelib/FaceLoginManager$match$2;->$loginData:Lcn/mucang/android/facelib/model/NonPerceiveLoginData;

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

    new-instance p1, Lcn/mucang/android/facelib/FaceLoginManager$match$2;

    iget-object v0, p0, Lcn/mucang/android/facelib/FaceLoginManager$match$2;->$xyUserModel:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iget-object v1, p0, Lcn/mucang/android/facelib/FaceLoginManager$match$2;->$loginData:Lcn/mucang/android/facelib/model/NonPerceiveLoginData;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/facelib/FaceLoginManager$match$2;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/facelib/model/NonPerceiveLoginData;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/facelib/FaceLoginManager$match$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/facelib/FaceLoginManager$match$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/facelib/FaceLoginManager$match$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/facelib/FaceLoginManager$match$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/facelib/FaceLoginManager$match$2;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->o()Lcn/mucang/jiakaoyi/uilib/login/face/l;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->m()Ljava/lang/String;

    move-result-object p1

    const-string v0, "standard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->o()Lcn/mucang/jiakaoyi/uilib/login/face/l;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/mucang/android/facelib/FaceLoginManager$match$2;->$xyUserModel:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iget-object v1, p0, Lcn/mucang/android/facelib/FaceLoginManager$match$2;->$loginData:Lcn/mucang/android/facelib/model/NonPerceiveLoginData;

    invoke-interface {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/l;->b(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->k()Lcn/mucang/jiakaoyi/uilib/login/face/l;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->m()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nonstandard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->k()Lcn/mucang/jiakaoyi/uilib/login/face/l;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/mucang/android/facelib/FaceLoginManager$match$2;->$xyUserModel:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iget-object v1, p0, Lcn/mucang/android/facelib/FaceLoginManager$match$2;->$loginData:Lcn/mucang/android/facelib/model/NonPerceiveLoginData;

    invoke-interface {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/l;->b(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    .line 6
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
