.class public final Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\nH\u0007J \u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$Companion;",
        "",
        "()V",
        "KEY_TOKEN",
        "",
        "launchForResult",
        "",
        "activity",
        "Landroid/app/Activity;",
        "cb",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "start",
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
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;->f(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;->e(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/framework/h/b;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;->h(Lcn/mucang/android/jiakaoyi/framework/h/b;IILandroid/content/Intent;)V

    return-void
.end method

.method private static final e(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/view/View;)V
    .locals 0

    const-string p2, "$activity"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;

    invoke-direct {p2, p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;->g(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final f(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const-string p1, "$activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->a:Lcn/mucang/jiakaoyi/uilib/login/LoginManager;

    invoke-virtual {p1, p0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->B(Landroid/app/Activity;)V

    return-void
.end method

.method private final g(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-static {p1}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object p1

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/sso/d;

    invoke-direct {v1, p2}, Lcn/mucang/jiakaoyi/uilib/sso/d;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    const/16 p2, 0x65

    invoke-virtual {p1, v0, p2, v1}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/framework/h/b;IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "ssoToken"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final d(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/e/p;->e:Lcn/mucang/android/jiakaoyi/framework/e/p$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/e/p$a;->a()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 3
    new-instance v9, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 4
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/sso/c;

    invoke-direct {v5, p1, p2}, Lcn/mucang/jiakaoyi/uilib/sso/c;-><init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    new-instance v7, Lcn/mucang/jiakaoyi/uilib/sso/b;

    invoke-direct {v7, p1}, Lcn/mucang/jiakaoyi/uilib/sso/b;-><init>(Landroid/app/Activity;)V

    const/4 v8, 0x0

    const-string v2, "\u5b9e\u65bd\u767b\u5f55\u786e\u8ba4"

    const-string v3, "\u68c0\u6d4b\u5230\u5df2\u626b\u7801\u767b\u5f55\uff0c\u662f\u5426\u76f4\u63a5\u767b\u5f55\uff1f"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u786e\u5b9a"

    move-object v1, v9

    .line 5
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    .line 6
    invoke-direct {v0, p1, v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;->g(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    :goto_0
    return-void
.end method
