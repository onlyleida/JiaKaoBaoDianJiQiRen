.class Lcom/mobile/auth/f/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/i/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/f/b;->b(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/f/b;


# direct methods
.method constructor <init>(Lcom/mobile/auth/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/f/b$a;->a:Lcom/mobile/auth/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    :try_start_0
    const-string p2, "103000"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/f/b$a;->a:Lcom/mobile/auth/f/b;

    invoke-static {p1, p3}, Lcom/mobile/auth/f/b;->a(Lcom/mobile/auth/f/b;Lorg/json/JSONObject;)V

    const-string p1, "sdk_config_ver"

    const-string p2, "quick_login_android_5.8.0"

    invoke-static {p1, p2}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/f/b$a;->a:Lcom/mobile/auth/f/b;

    invoke-static {p1}, Lcom/mobile/auth/f/b;->a(Lcom/mobile/auth/f/b;)Lcom/mobile/auth/f/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mobile/auth/f/b;->a(Lcom/mobile/auth/f/b;Lcom/mobile/auth/f/a;)Lcom/mobile/auth/f/a;

    iget-object p1, p0, Lcom/mobile/auth/f/b$a;->a:Lcom/mobile/auth/f/b;

    invoke-static {p1}, Lcom/mobile/auth/f/b;->b(Lcom/mobile/auth/f/b;)Lcom/mobile/auth/f/b$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/f/b$a;->a:Lcom/mobile/auth/f/b;

    invoke-static {p1}, Lcom/mobile/auth/f/b;->b(Lcom/mobile/auth/f/b;)Lcom/mobile/auth/f/b$c;

    move-result-object p1

    iget-object p2, p0, Lcom/mobile/auth/f/b$a;->a:Lcom/mobile/auth/f/b;

    invoke-static {p2}, Lcom/mobile/auth/f/b;->c(Lcom/mobile/auth/f/b;)Lcom/mobile/auth/f/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mobile/auth/f/b$c;->a(Lcom/mobile/auth/f/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mobile/auth/f/b$a;->a:Lcom/mobile/auth/f/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mobile/auth/f/b;->a(Lcom/mobile/auth/f/b;Z)Z

    return-void
.end method
