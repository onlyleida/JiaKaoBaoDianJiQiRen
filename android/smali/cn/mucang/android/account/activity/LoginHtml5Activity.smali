.class public final Lcn/mucang/android/account/activity/LoginHtml5Activity;
.super Lcn/mucang/android/core/webview/HTML5Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/activity/LoginHtml5Activity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/account/activity/LoginHtml5Activity;",
        "Lcn/mucang/android/core/webview/HTML5Activity;",
        "()V",
        "getStatName",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "account_release"
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
.field public static final b:Lcn/mucang/android/account/activity/LoginHtml5Activity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/account/activity/LoginHtml5Activity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/account/activity/LoginHtml5Activity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/account/activity/LoginHtml5Activity;->b:Lcn/mucang/android/account/activity/LoginHtml5Activity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/HTML5Activity;-><init>()V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/account/activity/LoginHtml5Activity;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/LoginHtml5Activity;->n(Lcn/mucang/android/account/activity/LoginHtml5Activity;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcn/mucang/android/account/activity/LoginHtml5Activity;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/LoginHtml5Activity;->o(Lcn/mucang/android/account/activity/LoginHtml5Activity;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Landroid/app/Activity;ILcn/mucang/android/core/webview/HtmlExtra;)V
    .locals 1

    sget-object v0, Lcn/mucang/android/account/activity/LoginHtml5Activity;->b:Lcn/mucang/android/account/activity/LoginHtml5Activity$a;

    invoke-virtual {v0, p0, p1, p2}, Lcn/mucang/android/account/activity/LoginHtml5Activity$a;->a(Landroid/app/Activity;ILcn/mucang/android/core/webview/HtmlExtra;)V

    return-void
.end method

.method private static final n(Lcn/mucang/android/account/activity/LoginHtml5Activity;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcn/mucang/android/account/f;->h(Z)V

    const/4 p1, -0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final o(Lcn/mucang/android/account/activity/LoginHtml5Activity;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "\u6682\u4e0d\u652f\u6301\u5b9e\u540d\u8ba4\u8bc1"

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u767b\u5f55-HTML"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/webview/HTML5Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcn/mucang/android/core/webview/core/d;

    const-string v0, "auth.luban.mucang.cn"

    invoke-direct {p1, v0}, Lcn/mucang/android/core/webview/core/d;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcn/mucang/android/account/activity/m0;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/m0;-><init>(Lcn/mucang/android/account/activity/LoginHtml5Activity;)V

    const-string v1, "certifiedOK"

    invoke-virtual {p1, v1, v0}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 4
    new-instance v0, Lcn/mucang/android/account/activity/n0;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/n0;-><init>(Lcn/mucang/android/account/activity/LoginHtml5Activity;)V

    const-string v1, "modifyCertification"

    invoke-virtual {p1, v1, v0}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 5
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/webview/HTML5Activity;->h(Lcn/mucang/android/core/webview/core/d;)V

    return-void
.end method
