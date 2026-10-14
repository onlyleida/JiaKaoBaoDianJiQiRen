.class public final Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0008\u0010\u000c\u001a\u00020\rH\u0007J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0002J\u0008\u0010\u000f\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\rH\u0007J\n\u0010\u0011\u001a\u0004\u0018\u00010\u000bH\u0007R \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/login/account/AccountUtils;",
        "",
        "()V",
        "coachModelLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;",
        "getCoachModelLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setCoachModelLiveData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "authToken",
        "",
        "checkCoachLogin",
        "",
        "getCoachModel",
        "isCoachLogin",
        "isLogin",
        "userId",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;

.field private static b:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->a:Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;

    .line 1
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->b:Landroidx/lifecycle/z;

    .line 2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/h;->a()Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->l()Z

    move-result v0

    return v0
.end method

.method public static final c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/data/AuthUser;->getMucangId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->b:Landroidx/lifecycle/z;

    return-object v0
.end method
