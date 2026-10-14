.class public Lcom/mobile/auth/k/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/mobile/auth/k/s;->a()Z

    move-result v0

    sput-boolean v0, Lcom/mobile/auth/k/l;->a:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mobile/auth/k/l;->d:J

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/mobile/auth/k/l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mobile/auth/k/l;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "pre_sim_key"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobile/auth/k/l;->c:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/mobile/auth/k/l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "phonescripcache"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "PhoneScripUtils"

    const-string v0, "null"

    invoke-static {p0, v0}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v1, 0x0

    const-string v3, "phonescripstarttime"

    invoke-static {v3, v1, v2}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/mobile/auth/k/l;->d:J

    invoke-static {p0, v0}, Lcom/mobile/auth/k/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mobile/auth/k/l;->b:Ljava/lang/String;

    return-object p0

    :cond_1
    sget-object p0, Lcom/mobile/auth/k/l;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    sput-object p1, Lcom/mobile/auth/k/l;->b:Ljava/lang/String;

    sput-wide p2, Lcom/mobile/auth/k/l;->d:J

    sput-object p4, Lcom/mobile/auth/k/l;->c:Ljava/lang/String;

    sget-boolean v0, Lcom/mobile/auth/k/l;->a:Z

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/mobile/auth/k/l$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mobile/auth/k/l$a;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/mobile/auth/k/u;->a(Lcom/mobile/auth/k/u$a;)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 2

    const-string v0, "phonescripcache"

    invoke-static {v0}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;)V

    const-string v0, "phonescripstarttime"

    invoke-static {v0}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;)V

    const-string v0, "pre_sim_key"

    invoke-static {v0}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/mobile/auth/k/l;->b:Ljava/lang/String;

    sput-object p0, Lcom/mobile/auth/k/l;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mobile/auth/k/l;->d:J

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/mobile/auth/k/l;->a:Z

    return v0
.end method

.method private static a(J)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PhoneScripUtils"

    invoke-static {v4, v2}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x1d4c0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Lcom/cmic/sso/sdk/a;)Z
    .locals 4

    const-string v0, "keyIsSimKeyICCID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "imsi"

    goto :goto_0

    :cond_0
    const-string v0, "iccid"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/k/l;->a(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "imsiState"

    invoke-virtual {p0, v3, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simState = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "PhoneScripUtils"

    invoke-static {v2, p0}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    return v1

    :cond_1
    sget-boolean p0, Lcom/mobile/auth/k/l;->a:Z

    if-eqz p0, :cond_2

    const-string p0, "phone is root"

    invoke-static {v2, p0}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mobile/auth/k/l;->a(Z)V

    :cond_2
    invoke-static {}, Lcom/mobile/auth/k/l;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/mobile/auth/k/l;->c(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private static b()Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mobile/auth/k/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mobile/auth/k/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/mobile/auth/k/l;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneScripUtils"

    invoke-static {v1, v0}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mobile/auth/k/l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-wide v0, Lcom/mobile/auth/k/l;->d:J

    invoke-static {v0, v1}, Lcom/mobile/auth/k/l;->a(J)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "phonescripcache"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "phonescripstarttime"

    invoke-static {v3, v1, v2}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1, v2}, Lcom/mobile/auth/k/l;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mobile/auth/k/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "phonescripcache"

    invoke-static {p1, p0}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "phonescripstarttime"

    invoke-static {p0, p2, p3}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;J)V

    const-string p0, "pre_sim_key"

    invoke-static {p0, p4}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
