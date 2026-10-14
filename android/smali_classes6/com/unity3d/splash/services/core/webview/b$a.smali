.class final Lcom/unity3d/splash/services/core/webview/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/core/webview/b;->b(Lcom/unity3d/splash/services/core/configuration/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/splash/services/core/configuration/a;


# direct methods
.method constructor <init>(Lcom/unity3d/splash/services/core/configuration/a;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/b$a;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, "UTF-8"

    :try_start_0
    new-instance v1, Lcom/unity3d/splash/services/core/webview/b;

    iget-object v2, p0, Lcom/unity3d/splash/services/core/webview/b$a;->a:Lcom/unity3d/splash/services/core/configuration/a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/b;-><init>(Lcom/unity3d/splash/services/core/configuration/a;Lcom/unity3d/splash/services/core/webview/b$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "?platform=android"

    :try_start_1
    iget-object v3, p0, Lcom/unity3d/splash/services/core/webview/b$a;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v3}, Lcom/unity3d/splash/services/core/configuration/a;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&origin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/unity3d/splash/services/core/webview/b$a;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v4}, Lcom/unity3d/splash/services/core/configuration/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Unsupported charset when encoding origin url"

    invoke-static {v4, v3}, Lcom/unity3d/splash/services/core/log/DeviceLog;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/unity3d/splash/services/core/webview/b$a;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v3}, Lcom/unity3d/splash/services/core/configuration/a;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/unity3d/splash/services/core/webview/b$a;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v4}, Lcom/unity3d/splash/services/core/configuration/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Unsupported charset when encoding webview version"

    invoke-static {v3, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/webview/b;->f()Lcom/unity3d/splash/services/core/webview/a;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/c/b/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/b$a;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/configuration/a;->e()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unity3d/splash/services/core/webview/b;->m(Lcom/unity3d/splash/services/core/webview/b;)V

    return-void

    :catch_2
    const-string v0, "Couldn\'t construct WebViewApp"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/b;->a()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
