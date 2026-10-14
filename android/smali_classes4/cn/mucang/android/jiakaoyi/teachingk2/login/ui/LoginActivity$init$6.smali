.class final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Landroid/view/View;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;"
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$6;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$6;->invoke$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Ljava/lang/String;)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->F(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$6;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-virtual {p1}, Lcn/mucang/android/facelib/FaceLoginManager;->O()V

    .line 3
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$6;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/s;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/s;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;)V

    invoke-virtual {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;->d(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method
