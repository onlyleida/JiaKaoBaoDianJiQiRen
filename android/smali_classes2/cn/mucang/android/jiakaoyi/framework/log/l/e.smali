.class public Lcn/mucang/android/jiakaoyi/framework/log/l/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/log/l/h;


# instance fields
.field private volatile a:Lcn/mucang/android/jiakaoyi/framework/log/l/g;

.field private final b:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field private final c:Lcn/mucang/android/jiakaoyi/framework/log/l/i/c;

.field public final d:Lcn/mucang/android/jiakaoyi/framework/log/j/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/log/i;Lcn/mucang/android/jiakaoyi/framework/log/l/i/c;Lcn/mucang/android/jiakaoyi/framework/log/j/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->b:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->c:Lcn/mucang/android/jiakaoyi/framework/log/l/i/c;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->d:Lcn/mucang/android/jiakaoyi/framework/log/j/b;

    return-void
.end method

.method private c(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/g;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->write(Ljava/lang/Object;J)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->a()V

    return-void
.end method

.method private d(J)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->b:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/g;->d(Lcn/mucang/android/jiakaoyi/framework/log/i;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/log/g;->g(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->b:Lcn/mucang/android/jiakaoyi/framework/log/i;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/log/i;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(JLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->d(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->b:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-direct {v0, v1, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/log/l/g;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/log/i;J)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/g;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/g;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->d:Lcn/mucang/android/jiakaoyi/framework/log/j/b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->b:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/log/g;->e()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/log/j/b;->b(Lcn/mucang/android/jiakaoyi/framework/log/i;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->write(Ljava/lang/Object;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/g;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/g;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65f6\u95f4\u6216\u8005\u5bb9\u91cf\u662f\u5426\u8fbe\u5230\u8981\u6c42\uff0c\u5f00\u59cb\u4e0a\u4f20:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->b:Lcn/mucang/android/jiakaoyi/framework/log/i;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/framework/log/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogTag"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->stop()V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->c:Lcn/mucang/android/jiakaoyi/framework/log/l/i/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->b:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-interface {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/i/c;->a(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;Lcn/mucang/android/jiakaoyi/framework/log/i;)V

    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public entityId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/g;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->entityId()J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Ljava/lang/Object;JLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->e(JLjava/lang/String;)V

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->d:Lcn/mucang/android/jiakaoyi/framework/log/j/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->b:Lcn/mucang/android/jiakaoyi/framework/log/i;

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/log/j/b;->b(Lcn/mucang/android/jiakaoyi/framework/log/i;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public g([BLjava/lang/String;JLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p4, p5}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->e(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->d:Lcn/mucang/android/jiakaoyi/framework/log/j/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->b:Lcn/mucang/android/jiakaoyi/framework/log/i;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/framework/log/j/b;->a(Lcn/mucang/android/jiakaoyi/framework/log/i;[BLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/g;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/g;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->stop()V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->c:Lcn/mucang/android/jiakaoyi/framework/log/l/i/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->b:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-interface {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/i/c;->a(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;Lcn/mucang/android/jiakaoyi/framework/log/i;)V

    return-void
.end method

.method public write(Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->f(Ljava/lang/Object;JLjava/lang/String;)V

    return-void
.end method

.method public write([BLjava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->g([BLjava/lang/String;JLjava/lang/String;)V

    return-void
.end method
