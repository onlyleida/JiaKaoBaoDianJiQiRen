.class public final Lcn/mucang/android/core/config/mapping/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/i/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/config/mapping/i;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/core/config/mapping/ProfileManager$initProtocolSupport$2",
        "Lcn/mucang/android/core/activity/ActivityStarter$CustomizedStarter;",
        "start",
        "",
        "context",
        "Landroid/content/Context;",
        "protocol",
        "",
        "core-lib_release"
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
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/core/config/mapping/i$b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/android/core/config/mapping/j;

    invoke-direct {v0}, Lcn/mucang/android/core/config/mapping/j;-><init>()V

    invoke-virtual {v0, p0}, Lcn/mucang/android/core/config/mapping/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p0, "code\u53ef\u80fd\u5df2\u7ecf\u8fc7\u671f\uff0c\u8bf7\u5237\u65b0"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/core/config/mapping/i;->a:Lcn/mucang/android/core/config/mapping/i;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcn/mucang/android/core/config/mapping/i;->a(Lcn/mucang/android/core/config/mapping/i;Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    .line 7
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u53ef\u80fdcode\u8fc7\u671f\uff0c\u518d\u8bd5\u4e00\u6b21:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p2}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return v0

    .line 2
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "token"

    .line 3
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    .line 4
    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v1, :cond_4

    .line 5
    invoke-static {v1}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_5

    .line 6
    sget-object p1, Lcn/mucang/android/core/config/mapping/i;->a:Lcn/mucang/android/core/config/mapping/i;

    const/4 p2, 0x0

    invoke-static {p1, v1, p2}, Lcn/mucang/android/core/config/mapping/i;->a(Lcn/mucang/android/core/config/mapping/i;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_6

    .line 7
    invoke-static {p2}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 p1, 0x1

    :cond_7
    if-nez p1, :cond_8

    .line 8
    new-instance p1, Lcn/mucang/android/core/config/mapping/f;

    invoke-direct {p1, p2}, Lcn/mucang/android/core/config/mapping/f;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    :cond_8
    :goto_4
    return v0
.end method
