.class final Lcom/tencent/bugly/crashreport/crash/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/bugly/proguard/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;JZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:J

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Z

.field private synthetic d:Lcom/tencent/bugly/crashreport/crash/b;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/b;JLjava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/b$6;->d:Lcom/tencent/bugly/crashreport/crash/b;

    iput-wide p2, p0, Lcom/tencent/bugly/crashreport/crash/b$6;->a:J

    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/b$6;->b:Ljava/util/List;

    iput-boolean p5, p0, Lcom/tencent/bugly/crashreport/crash/b$6;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/b$6;->a:J

    sub-long v7, v0, v2

    .line 2
    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/b$6;->d:Lcom/tencent/bugly/crashreport/crash/b;

    iget-object v5, p0, Lcom/tencent/bugly/crashreport/crash/b$6;->b:Ljava/util/List;

    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/b$6;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "realtime"

    goto :goto_0

    :cond_0
    const-string v0, "cache"

    :goto_0
    move-object v9, v0

    move v6, p1

    move-object v10, p2

    invoke-static/range {v4 .. v10}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/b;Ljava/util/List;ZJLjava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/b$6;->b:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/tencent/bugly/crashreport/crash/b;->a(ZLjava/util/List;)V

    return-void
.end method
