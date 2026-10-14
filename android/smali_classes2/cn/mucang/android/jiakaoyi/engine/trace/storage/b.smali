.class public Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Ljava/io/FileWriter;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".txt"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->a:Ljava/lang/String;

    .line 3
    :try_start_0
    new-instance p2, Ljava/io/FileWriter;

    invoke-direct {p2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->b:Ljava/io/FileWriter;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->c:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->b:Ljava/io/FileWriter;

    .line 6
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TraceFileTag"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->b:Ljava/io/FileWriter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->c:Z

    if-nez v2, :cond_1

    const-string v2, "]"

    .line 3
    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->b:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->b:Ljava/io/FileWriter;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 6
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->b:Ljava/io/FileWriter;

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v2, "TraceFileTag"

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->b:Ljava/io/FileWriter;

    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 9
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->b:Ljava/io/FileWriter;

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->b:Ljava/io/FileWriter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "["

    .line 3
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, ","

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->b:Ljava/io/FileWriter;

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->b:Ljava/io/FileWriter;

    invoke-virtual {p1}, Ljava/io/FileWriter;->flush()V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TraceFileTag"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
