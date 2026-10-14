.class Lcn/mucang/android/core/webview/tracker/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/tracker/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/tracker/c;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/core/webview/tracker/c$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "report fail."

    .line 1
    :try_start_0
    new-instance v1, Lcn/mucang/android/core/webview/tracker/d/c;

    invoke-direct {v1}, Lcn/mucang/android/core/webview/tracker/d/c;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/core/webview/tracker/c$a;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcn/mucang/android/core/webview/tracker/d/c;->b(Ljava/util/List;)V
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-static {}, Lcn/mucang/android/core/webview/tracker/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :catch_1
    invoke-static {}, Lcn/mucang/android/core/webview/tracker/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :catch_2
    invoke-static {}, Lcn/mucang/android/core/webview/tracker/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
