.class Lcom/mobile/auth/j/b$a;
.super Lcom/mobile/auth/k/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/j/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/mobile/auth/j/b;


# direct methods
.method constructor <init>(Lcom/mobile/auth/j/b;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/j/b$a;->b:Lcom/mobile/auth/j/b;

    iput-object p2, p0, Lcom/mobile/auth/j/b$a;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/mobile/auth/k/u$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/mobile/auth/j/b$a;->b:Lcom/mobile/auth/j/b;

    iget-object v1, p0, Lcom/mobile/auth/j/b$a;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/mobile/auth/j/b;->a(Lcom/mobile/auth/j/b;Lorg/json/JSONObject;)V

    return-void
.end method
