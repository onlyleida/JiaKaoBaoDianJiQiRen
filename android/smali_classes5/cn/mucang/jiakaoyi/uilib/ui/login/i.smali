.class public final Lcn/mucang/jiakaoyi/uilib/ui/login/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0001\'B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u001e\u001a\u00020\u0008H\u0002J\u0008\u0010\u001f\u001a\u00020\u0008H\u0002J\u0008\u0010 \u001a\u00020!H\u0002J\u0006\u0010\"\u001a\u00020!J\u0006\u0010#\u001a\u00020!J\u0006\u0010$\u001a\u00020!J\u0006\u0010%\u001a\u00020!J\u0006\u0010&\u001a\u00020!R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0010R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006("
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter;",
        "",
        "loginBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogLoginBinding;",
        "isLogout",
        "",
        "isCoach",
        "coachAuthToken",
        "",
        "toLogin",
        "Landroid/view/View$OnClickListener;",
        "needSmsLogin",
        "(Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogLoginBinding;ZZLjava/lang/String;Landroid/view/View$OnClickListener;Z)V",
        "getCoachAuthToken",
        "()Ljava/lang/String;",
        "isCanSwitch",
        "()Z",
        "setCanSwitch",
        "(Z)V",
        "getLoginBinding",
        "()Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogLoginBinding;",
        "loginMode",
        "",
        "getLoginMode",
        "()I",
        "setLoginMode",
        "(I)V",
        "getNeedSmsLogin",
        "getToLogin",
        "()Landroid/view/View$OnClickListener;",
        "getBaoDianLoginUrl",
        "getWeiXinLoginUrl",
        "initView",
        "",
        "onCreated",
        "onDestroy",
        "onPause",
        "onResume",
        "switchMode",
        "Companion",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/jiakaoyi/uilib/ui/login/i;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/login/i;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://share-m.ttt.kakamobi.com/activity.kakamobi.com/jiakaobaodian-hy-scan-login"

    goto :goto_0

    :cond_0
    const-string v0, "https://share-m.kakamobi.com/activity.kakamobi.com/jiakaobaodian-hy-scan-login"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final c()Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogLoginBinding;
    .locals 0

    const p0, 0x0

    throw p0
.end method
