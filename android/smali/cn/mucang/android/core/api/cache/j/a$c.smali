.class public final Lcn/mucang/android/core/api/cache/j/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/cache/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/cache/j/a$c$a;
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/core/api/cache/j/a$d;

.field private final b:[Z

.field private c:Z

.field final synthetic d:Lcn/mucang/android/core/api/cache/j/a;


# direct methods
.method private constructor <init>(Lcn/mucang/android/core/api/cache/j/a;Lcn/mucang/android/core/api/cache/j/a$d;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/j/a$c;->d:Lcn/mucang/android/core/api/cache/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcn/mucang/android/core/api/cache/j/a$c;->a:Lcn/mucang/android/core/api/cache/j/a$d;

    .line 4
    invoke-static {p2}, Lcn/mucang/android/core/api/cache/j/a$d;->e(Lcn/mucang/android/core/api/cache/j/a$d;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcn/mucang/android/core/api/cache/j/a;->d(Lcn/mucang/android/core/api/cache/j/a;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/j/a$c;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/api/cache/j/a;Lcn/mucang/android/core/api/cache/j/a$d;Lcn/mucang/android/core/api/cache/j/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/api/cache/j/a$c;-><init>(Lcn/mucang/android/core/api/cache/j/a;Lcn/mucang/android/core/api/cache/j/a$d;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/core/api/cache/j/a$c;)Lcn/mucang/android/core/api/cache/j/a$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/cache/j/a$c;->a:Lcn/mucang/android/core/api/cache/j/a$d;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/core/api/cache/j/a$c;)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/cache/j/a$c;->b:[Z

    return-object p0
.end method

.method static synthetic d(Lcn/mucang/android/core/api/cache/j/a$c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/api/cache/j/a$c;->c:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/j/a$c;->d:Lcn/mucang/android/core/api/cache/j/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcn/mucang/android/core/api/cache/j/a;->i(Lcn/mucang/android/core/api/cache/j/a;Lcn/mucang/android/core/api/cache/j/a$c;Z)V

    return-void
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/api/cache/j/a$c;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/j/a$c;->d:Lcn/mucang/android/core/api/cache/j/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcn/mucang/android/core/api/cache/j/a;->i(Lcn/mucang/android/core/api/cache/j/a;Lcn/mucang/android/core/api/cache/j/a$c;Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/j/a$c;->d:Lcn/mucang/android/core/api/cache/j/a;

    iget-object v1, p0, Lcn/mucang/android/core/api/cache/j/a$c;->a:Lcn/mucang/android/core/api/cache/j/a$d;

    invoke-static {v1}, Lcn/mucang/android/core/api/cache/j/a$d;->b(Lcn/mucang/android/core/api/cache/j/a$d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/j/a;->F(Ljava/lang/String;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/j/a$c;->d:Lcn/mucang/android/core/api/cache/j/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcn/mucang/android/core/api/cache/j/a;->i(Lcn/mucang/android/core/api/cache/j/a;Lcn/mucang/android/core/api/cache/j/a$c;Z)V

    :goto_0
    return-void
.end method

.method public f(I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/j/a$c;->d:Lcn/mucang/android/core/api/cache/j/a;

    invoke-static {v0}, Lcn/mucang/android/core/api/cache/j/a;->d(Lcn/mucang/android/core/api/cache/j/a;)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/j/a$c;->d:Lcn/mucang/android/core/api/cache/j/a;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/api/cache/j/a$c;->a:Lcn/mucang/android/core/api/cache/j/a$d;

    invoke-static {v1}, Lcn/mucang/android/core/api/cache/j/a$d;->g(Lcn/mucang/android/core/api/cache/j/a$d;)Lcn/mucang/android/core/api/cache/j/a$c;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/api/cache/j/a$c;->a:Lcn/mucang/android/core/api/cache/j/a$d;

    invoke-static {v1}, Lcn/mucang/android/core/api/cache/j/a$d;->e(Lcn/mucang/android/core/api/cache/j/a$d;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/core/api/cache/j/a$c;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/core/api/cache/j/a$c;->a:Lcn/mucang/android/core/api/cache/j/a$d;

    invoke-virtual {v1, p1}, Lcn/mucang/android/core/api/cache/j/a$d;->k(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcn/mucang/android/core/api/cache/j/a$c;->d:Lcn/mucang/android/core/api/cache/j/a;

    invoke-static {v1}, Lcn/mucang/android/core/api/cache/j/a;->e(Lcn/mucang/android/core/api/cache/j/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :goto_0
    :try_start_4
    new-instance p1, Lcn/mucang/android/core/api/cache/j/a$c$a;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcn/mucang/android/core/api/cache/j/a$c$a;-><init>(Lcn/mucang/android/core/api/cache/j/a$c;Ljava/io/OutputStream;Lcn/mucang/android/core/api/cache/j/a$a;)V

    monitor-exit v0

    return-object p1

    .line 11
    :catch_1
    invoke-static {}, Lcn/mucang/android/core/api/cache/j/a;->h()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to be greater than 0 and less than the maximum value count of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/android/core/api/cache/j/a$c;->d:Lcn/mucang/android/core/api/cache/j/a;

    .line 15
    invoke-static {p1}, Lcn/mucang/android/core/api/cache/j/a;->d(Lcn/mucang/android/core/api/cache/j/a;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
