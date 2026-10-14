.class public final Lcom/tencent/bugly/crashreport/crash/anr/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/c;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/c;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/c;->d:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 5
    :goto_0
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/c;->c:Ljava/lang/String;

    .line 6
    iput-wide p2, p0, Lcom/tencent/bugly/crashreport/crash/anr/c;->b:J

    .line 7
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/c;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 2
    :goto_0
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/c;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/c;->d:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/c;->b:J

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/c;->d:Z

    return v0
.end method
