.class Lcom/unity3d/splash/services/core/configuration/d$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/core/configuration/d$k;->b()Lcom/unity3d/splash/services/core/configuration/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/splash/services/core/webview/b;

.field final synthetic b:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/unity3d/splash/services/core/configuration/d$k;Lcom/unity3d/splash/services/core/webview/b;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p2, p0, Lcom/unity3d/splash/services/core/configuration/d$k$a;->a:Lcom/unity3d/splash/services/core/webview/b;

    iput-object p3, p0, Lcom/unity3d/splash/services/core/configuration/d$k$a;->b:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d$k$a;->a:Lcom/unity3d/splash/services/core/webview/b;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/webview/b;->f()Lcom/unity3d/splash/services/core/webview/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d$k$a;->a:Lcom/unity3d/splash/services/core/webview/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/core/webview/b;->p(Lcom/unity3d/splash/services/core/webview/a;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d$k$a;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
