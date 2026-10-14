.class Lcom/mobile/auth/k/u$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/k/u$a;-><init>(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cmic/sso/sdk/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/k/u$a;Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    iput-object p2, p0, Lcom/mobile/auth/k/u$a$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mobile/auth/k/u$a$b;->b:Lcom/cmic/sso/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/mobile/auth/k/u$a$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mobile/auth/e/a;->a(Landroid/content/Context;)Lcom/mobile/auth/e/a;

    move-result-object v0

    iget-object v3, p0, Lcom/mobile/auth/k/u$a$b;->b:Lcom/cmic/sso/sdk/a;

    const-string v1, "200025"

    const-string v2, "\u53d1\u751f\u672a\u77e5\u9519\u8bef"

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mobile/auth/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    return-void
.end method
