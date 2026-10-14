.class public Lcom/mobile/auth/gatewayauth/manager/base/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/gatewayauth/manager/base/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;


# direct methods
.method private constructor <init>(Lcom/mobile/auth/gatewayauth/manager/base/c$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a(Lcom/mobile/auth/gatewayauth/manager/base/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->b(Lcom/mobile/auth/gatewayauth/manager/base/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->c(Lcom/mobile/auth/gatewayauth/manager/base/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->d(Lcom/mobile/auth/gatewayauth/manager/base/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->e(Lcom/mobile/auth/gatewayauth/manager/base/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->e:Z

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->f(Lcom/mobile/auth/gatewayauth/manager/base/c$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->f:J

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->g(Lcom/mobile/auth/gatewayauth/manager/base/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->h(Lcom/mobile/auth/gatewayauth/manager/base/c$a;)Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->h:Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobile/auth/gatewayauth/manager/base/c$a;Lcom/mobile/auth/gatewayauth/manager/base/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/manager/base/c;-><init>(Lcom/mobile/auth/gatewayauth/manager/base/c$a;)V

    return-void
.end method

.method public static a()Lcom/mobile/auth/gatewayauth/manager/base/c$a;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    invoke-direct {v1, v0}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;-><init>(Lcom/mobile/auth/gatewayauth/manager/base/c$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/base/c;->a()Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->d(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->e(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->b(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object p1
.end method


# virtual methods
.method public a(J)V
    .locals 0

    :try_start_0
    iput-wide p1, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public d()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public e()Z
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public f()J
    .locals 3

    :try_start_0
    iget-wide v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    const-wide/16 v1, -0x1

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-wide v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-wide v1
.end method

.method public g()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public h()Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->h:Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public i()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->toJson(Ljava/lang/Object;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/base/c;->h:Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

    if-eqz v2, :cond_0

    const-string v3, "loginPhoneInfo"

    invoke-static {v2, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->toJson(Ljava/lang/Object;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method
