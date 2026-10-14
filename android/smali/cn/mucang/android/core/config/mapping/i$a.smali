.class public final Lcn/mucang/android/core/config/mapping/i$a;
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
        "cn/mucang/android/core/config/mapping/ProfileManager$initProtocolSupport$1",
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

    const-string v2, "id"

    .line 4
    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/text/l;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    :goto_2
    if-eqz v1, :cond_4

    .line 5
    invoke-static {v1}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 p1, 0x1

    :cond_5
    if-nez p1, :cond_7

    if-nez p2, :cond_6

    goto :goto_3

    .line 6
    :cond_6
    sget-object p1, Lcn/mucang/android/core/config/mapping/i;->a:Lcn/mucang/android/core/config/mapping/i;

    invoke-static {p1, v1, p2}, Lcn/mucang/android/core/config/mapping/i;->a(Lcn/mucang/android/core/config/mapping/i;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_7
    :goto_3
    return v0
.end method
