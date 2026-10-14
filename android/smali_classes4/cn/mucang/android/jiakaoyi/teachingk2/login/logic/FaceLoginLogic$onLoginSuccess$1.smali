.class final Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->b(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $loginData:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

.field final synthetic $user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;->$loginData:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;->invoke$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loginData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object p0

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->FACE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->D(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->btnFaceCheck:Landroid/widget/TextView;

    const-string v1, "binding.btnFaceCheck"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;->$loginData:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/i;

    invoke-direct {v4, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_logging_in:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_login_fail:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v4, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->i(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method
