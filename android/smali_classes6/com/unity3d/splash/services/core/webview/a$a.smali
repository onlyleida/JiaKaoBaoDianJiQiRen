.class Lcom/unity3d/splash/services/core/webview/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/webview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/webkit/WebView;

.field final synthetic c:Lcom/unity3d/splash/services/core/webview/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/splash/services/core/webview/a;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/a$a;->c:Lcom/unity3d/splash/services/core/webview/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/a$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/a$a;->b:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/unity3d/splash/services/core/webview/a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/splash/services/core/webview/a$a;->b:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/a$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/a;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/a$a;->b:Landroid/webkit/WebView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/unity3d/splash/services/core/webview/a$a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/a$a;->c:Lcom/unity3d/splash/services/core/webview/a;

    invoke-virtual {v1, v0}, Lcom/unity3d/splash/services/core/webview/a;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error while processing JavaScriptString"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_1
    const-string v0, "Could not process JavaScript, the string is NULL"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->e(Ljava/lang/String;)V

    return-void
.end method
