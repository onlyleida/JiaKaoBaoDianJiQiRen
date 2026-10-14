.class final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->f(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.login.ui.AbnormalLoginDialog$checkIsSameUser$1$1$1"
    f = "AbnormalLoginDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->invokeSuspend$lambda-1$lambda-0(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->invokeSuspend$lambda-1(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-1(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getStudentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 4
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/facelib/FaceLoginManager;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/o/b;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/login/o/b;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getXyToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/o/b;->o(Ljava/lang/String;)Z

    move-result v0

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/b;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5220\u6389\u5b66\u5458\uff08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\uff09\u4eba\u8138\u6570\u636e\u7ed3\u679c\uff1a"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-1$lambda-0(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-virtual {v0, p0}, Lcn/mucang/android/facelib/FaceLoginManager;->K(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    :cond_0
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    if-eqz p1, :cond_3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getMucangId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getMucangId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u5f02\u5e38\u767b\u5f55\u68c0\u9a8c\uff1a\u662f\u672c\u4eba\u8d26\u53f7"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/c;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/c;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    :cond_1
    const-string p1, "\u5f02\u5e38\u767b\u5f55\u68c0\u9a8c\uff1a\u4e0d\u662f\u672c\u4eba\u8d26\u53f7"

    .line 7
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->d(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;I)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 10
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_login_error_three:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;)I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    const-string p1, "checkIsSameUser"

    .line 12
    invoke-static {p1, v1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 14
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
