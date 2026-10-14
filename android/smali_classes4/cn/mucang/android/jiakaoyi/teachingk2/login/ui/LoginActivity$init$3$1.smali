.class final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->o(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
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
        "user",
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;"
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
.field final synthetic $it:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$3$1;->$it:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$3$1;->invoke(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 2

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/e/p;->e:Lcn/mucang/android/jiakaoyi/framework/e/p$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/e/p$a;->a()Landroidx/lifecycle/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcn/mucang/android/account/data/AuthUser;

    invoke-direct {v0}, Lcn/mucang/android/account/data/AuthUser;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getMucangId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/AuthUser;->setMucangId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/AuthUser;->setAuthToken(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/AuthUser;->setNickname(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/AuthUser;->setAvatar(Ljava/lang/String;)V

    .line 8
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->setAuthUser(Lcn/mucang/android/account/data/AuthUser;)V

    .line 10
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getAuthUser()Lcn/mucang/android/account/data/AuthUser;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/AccountManager;->y(Lcn/mucang/android/account/data/AuthUser;)V

    .line 11
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$a;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$3$1;->$it:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "it.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$a;->a(Landroid/content/Context;I)V

    return-void
.end method
