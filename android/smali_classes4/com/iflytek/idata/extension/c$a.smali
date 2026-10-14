.class Lcom/iflytek/idata/extension/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/idata/extension/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/idata/extension/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/idata/extension/c;


# direct methods
.method constructor <init>(Lcom/iflytek/idata/extension/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/idata/extension/c$a;->a:Lcom/iflytek/idata/extension/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/idata/extension/b;[B)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/iflytek/idata/extension/b;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Collector"

    const-string v0, "upload success"

    .line 3
    invoke-static {p2, v0}, Lcom/iflytek/idata/extension/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/iflytek/idata/extension/c$a;->a:Lcom/iflytek/idata/extension/c;

    invoke-static {p2, p1}, Lcom/iflytek/idata/extension/c;->a(Lcom/iflytek/idata/extension/c;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/iflytek/idata/extension/c$a;->a(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Collector"

    invoke-static {v0, p1}, Lcom/iflytek/idata/extension/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
