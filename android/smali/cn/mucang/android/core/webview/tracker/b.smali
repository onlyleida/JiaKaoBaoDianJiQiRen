.class public Lcn/mucang/android/core/webview/tracker/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/webview/tracker/b$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/core/webview/tracker/b;->d()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/webview/tracker/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/tracker/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/webview/tracker/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/tracker/b;->a:Ljava/util/List;

    return-object p1
.end method

.method public static c()Lcn/mucang/android/core/webview/tracker/b;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/webview/tracker/b$c;->a:Lcn/mucang/android/core/webview/tracker/b;

    return-object v0
.end method

.method private d()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/tracker/b$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/tracker/b$b;-><init>(Lcn/mucang/android/core/webview/tracker/b;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/tracker/b;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/webview/tracker/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/core/webview/tracker/http/model/a;

    invoke-direct {v0, p4, p3, p1, p2}, Lcn/mucang/android/core/webview/tracker/http/model/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "override track -->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/tracker/http/model/a;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebViewOverrideTracker"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p1, Lcn/mucang/android/core/webview/tracker/b$a;

    invoke-direct {p1, p0, v0}, Lcn/mucang/android/core/webview/tracker/b$a;-><init>(Lcn/mucang/android/core/webview/tracker/b;Lcn/mucang/android/core/webview/tracker/http/model/a;)V

    invoke-static {p1}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
