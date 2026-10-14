.class public Lcom/mobile/auth/h/c;
.super Lcom/mobile/auth/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/h/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mobile/auth/h/c$a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mobile/auth/h/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "encrypted"

    :try_start_0
    iget-object v2, p0, Lcom/mobile/auth/h/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "reqdata"

    :try_start_1
    iget-object v2, p0, Lcom/mobile/auth/h/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/h/c;->a:Lcom/mobile/auth/h/c$a;

    invoke-virtual {v3}, Lcom/mobile/auth/h/c$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mobile/auth/k/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "GETpre"

    :try_start_2
    iget-object v2, p0, Lcom/mobile/auth/h/c;->a:Lcom/mobile/auth/h/c$a;

    invoke-virtual {v2}, Lcom/mobile/auth/h/c$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public a(Lcom/mobile/auth/h/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/h/c;->a:Lcom/mobile/auth/h/c$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/h/c;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/mobile/auth/h/c$a;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/h/c;->a:Lcom/mobile/auth/h/c$a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/h/c;->c:Ljava/lang/String;

    return-void
.end method
