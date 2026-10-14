.class Lcom/mobile/auth/e/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/e/e;

.field final synthetic b:I

.field final synthetic c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/mobile/auth/e/a;Lcom/mobile/auth/e/e;ILorg/json/JSONObject;)V
    .locals 0

    iput-object p2, p0, Lcom/mobile/auth/e/a$b;->a:Lcom/mobile/auth/e/e;

    iput p3, p0, Lcom/mobile/auth/e/a$b;->b:I

    iput-object p4, p0, Lcom/mobile/auth/e/a$b;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mobile/auth/e/a$b;->a:Lcom/mobile/auth/e/e;

    iget v1, p0, Lcom/mobile/auth/e/a$b;->b:I

    iget-object v2, p0, Lcom/mobile/auth/e/a$b;->c:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/mobile/auth/e/e;->a(ILorg/json/JSONObject;)V

    return-void
.end method
