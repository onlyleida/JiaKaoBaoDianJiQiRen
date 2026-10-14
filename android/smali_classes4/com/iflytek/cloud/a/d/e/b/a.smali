.class public Lcom/iflytek/cloud/a/d/e/b/a;
.super Lcom/iflytek/cloud/a/d/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/a/d/e/b/a$c;,
        Lcom/iflytek/cloud/a/d/e/b/a$b;,
        Lcom/iflytek/cloud/a/d/e/b/a$d;
    }
.end annotation


# static fields
.field private static a:Lcom/iflytek/cloud/a/d/e/b/a;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/Object;

.field private g:Z

.field private final h:[B

.field private final i:Lcom/iflytek/cloud/a/d/e/b/c;

.field private final j:Lcom/iflytek/cloud/a/d/e/b/a$d;

.field private k:I

.field private final l:Lcom/iflytek/cloud/a/d/e/b/a$b;

.field private m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:Lcom/iflytek/cloud/a/d/e/b/b;

.field private final r:Lcom/iflytek/cloud/a/d/e/b/a$c;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/a/d/e/b/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/a;-><init>()V

    const v0, 0xc000

    .line 2
    iput v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->c:I

    const v0, 0x78000

    .line 3
    iput v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->d:I

    const/high16 v0, 0xf0000

    .line 4
    iput v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->e:I

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->g:Z

    const/16 v1, 0x100

    new-array v1, v1, [B

    .line 7
    iput-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->h:[B

    .line 8
    new-instance v1, Lcom/iflytek/cloud/a/d/e/b/c;

    const-wide/32 v3, 0x78000

    const v5, 0xc000

    const-wide/32 v6, 0x3c000

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/iflytek/cloud/a/d/e/b/c;-><init>(JIJZZ)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    .line 9
    new-instance v2, Lcom/iflytek/cloud/a/d/e/b/a$d;

    const-string v3, "AIMicAudioWritingThread"

    invoke-direct {v2, p0, v3}, Lcom/iflytek/cloud/a/d/e/b/a$d;-><init>(Lcom/iflytek/cloud/a/d/e/b/a;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/a;->j:Lcom/iflytek/cloud/a/d/e/b/a$d;

    const/4 v3, 0x2

    .line 10
    iput v3, p0, Lcom/iflytek/cloud/a/d/e/b/a;->k:I

    .line 11
    new-instance v4, Lcom/iflytek/cloud/a/d/e/b/a$b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/iflytek/cloud/a/d/e/b/a$b;-><init>(Lcom/iflytek/cloud/a/d/e/b/a$a;)V

    iput-object v4, p0, Lcom/iflytek/cloud/a/d/e/b/a;->l:Lcom/iflytek/cloud/a/d/e/b/a$b;

    const/16 v6, 0xfa0

    .line 12
    iput v6, p0, Lcom/iflytek/cloud/a/d/e/b/a;->m:I

    const/16 v6, 0x3e80

    .line 13
    iput v6, p0, Lcom/iflytek/cloud/a/d/e/b/a;->n:I

    .line 14
    iput v3, p0, Lcom/iflytek/cloud/a/d/e/b/a;->o:I

    const/16 v7, 0x600

    .line 15
    iput v7, p0, Lcom/iflytek/cloud/a/d/e/b/a;->p:I

    .line 16
    iput-object v5, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    .line 17
    new-instance v8, Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-direct {v8, p0, v5}, Lcom/iflytek/cloud/a/d/e/b/a$c;-><init>(Lcom/iflytek/cloud/a/d/e/b/a;Lcom/iflytek/cloud/a/d/e/b/a$a;)V

    iput-object v8, p0, Lcom/iflytek/cloud/a/d/e/b/a;->r:Lcom/iflytek/cloud/a/d/e/b/a$c;

    .line 18
    iput v6, p0, Lcom/iflytek/cloud/a/d/e/b/a;->s:I

    .line 19
    iput v3, p0, Lcom/iflytek/cloud/a/d/e/b/a;->t:I

    .line 20
    iput v7, p0, Lcom/iflytek/cloud/a/d/e/b/a;->u:I

    const/4 v6, -0x3

    .line 21
    iput v6, p0, Lcom/iflytek/cloud/a/d/e/b/a;->v:I

    .line 22
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->w:Z

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aimic constructor enter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 24
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 26
    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    :cond_0
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->isLoaded()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_3

    if-eqz p1, :cond_2

    const-string v7, "lib_name"

    .line 28
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_2

    const/16 v5, 0x2c

    .line 30
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-gez v5, :cond_1

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    :cond_1
    const/16 v9, 0x3d

    .line 32
    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    add-int/2addr v9, v8

    .line 33
    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-virtual {v6, v7, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object v5, p1

    .line 35
    :cond_2
    invoke-static {v5}, Lcom/iflytek/msc/AIMIC;->loadLibrary(Ljava/lang/String;)V

    .line 36
    :cond_3
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->isValid()Z

    move-result p1

    if-nez p1, :cond_4

    .line 37
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/d;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, v4}, Lcom/iflytek/msc/AIMIC;->AIMICNew([BLcom/iflytek/msc/AIMIC$Listener;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AIMICNew return error: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/iflytek/msc/AIMIC;->AIMICDestroy(J)I

    :cond_4
    if-nez v0, :cond_7

    .line 41
    iput-boolean v8, p0, Lcom/iflytek/cloud/a/d/e/b/a;->g:Z

    .line 42
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 43
    iget p1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->k:I

    if-eqz p1, :cond_5

    if-ne v3, p1, :cond_6

    :cond_5
    const-wide/32 v2, 0x78000

    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/a/d/e/b/c;->a(J)V

    .line 45
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic constructor leave: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_7
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1
.end method

.method static synthetic a(Lcom/iflytek/cloud/a/d/e/b/a;)Lcom/iflytek/cloud/a/d/e/b/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    return-object p0
.end method

.method private b([BII)I
    .locals 2

    const/4 v0, 0x0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iflytek/cloud/a/d/e/b/c;->a([BII)V

    .line 30
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->j:Lcom/iflytek/cloud/a/d/e/b/a$d;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    sget-object p2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    iget-object p3, p0, Lcom/iflytek/cloud/a/d/e/b/a;->j:Lcom/iflytek/cloud/a/d/e/b/a$d;

    invoke-virtual {p3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p3

    if-ne p2, p3, :cond_0

    .line 32
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/a;->j:Lcom/iflytek/cloud/a/d/e/b/a$d;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 33
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->j:Lcom/iflytek/cloud/a/d/e/b/a$d;

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/d/e/b/a$d;->a()Lcom/iflytek/cloud/SpeechError;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result p1

    .line 36
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/a;->j:Lcom/iflytek/cloud/a/d/e/b/a$d;

    invoke-virtual {p2}, Lcom/iflytek/cloud/a/d/e/b/a$d;->c()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 37
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    const-string p2, "write audio too soon, please wait for a second, and try again!"

    .line 38
    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 v0, 0x5207

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 v0, 0x697e

    goto :goto_0

    :catch_1
    move-exception p1

    .line 41
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 v0, 0x6985

    goto :goto_0

    :catch_2
    move-exception p1

    .line 42
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 43
    iget p1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->k:I

    const/4 p2, 0x2

    if-ne p2, p1, :cond_1

    const-string p1, "write audio too soon, current audios  in buffer will be ignored!"

    .line 44
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/d/e/b/c;->a()V

    goto :goto_0

    :cond_1
    const-string p1, "write audio too soon, please wait for a second, and try again!"

    .line 46
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    const/16 v0, 0x6986

    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/a/d/e/b/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a;->i()Z

    move-result p0

    return p0
.end method

.method public static c()I
    .locals 1

    .line 13
    :try_start_0
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->AIMICGetChannel()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/a/d/e/b/a;)Lcom/iflytek/cloud/a/d/e/b/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->l:Lcom/iflytek/cloud/a/d/e/b/a$b;

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/iflytek/cloud/a/d/e/b/a;
    .locals 2

    const-string v0, "aimic createAIMic enter"

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/iflytek/cloud/a/d/e/b/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/a/d/e/b/a;->a:Lcom/iflytek/cloud/a/d/e/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    new-instance v1, Lcom/iflytek/cloud/a/d/e/b/a;

    invoke-direct {v1, p0}, Lcom/iflytek/cloud/a/d/e/b/a;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/iflytek/cloud/a/d/e/b/a;->a:Lcom/iflytek/cloud/a/d/e/b/a;
    :try_end_1
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_2
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 9
    :cond_0
    :goto_0
    sget-object p0, Lcom/iflytek/cloud/a/d/e/b/a;->a:Lcom/iflytek/cloud/a/d/e/b/a;

    .line 10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic createAIMic leave: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-object p0

    :catchall_1
    move-exception p0

    .line 12
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method static synthetic d(Lcom/iflytek/cloud/a/d/e/b/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->k:I

    return p0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lcom/iflytek/cloud/a/d/e/b/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->AIMICGetVersion()[B

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/d;->a([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 6
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "true"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static h()Lcom/iflytek/cloud/a/d/e/b/a;
    .locals 3

    const-string v0, "aimic getAIMic enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/iflytek/cloud/a/d/e/b/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/a/d/e/b/a;->a:Lcom/iflytek/cloud/a/d/e/b/a;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic getAIMic leave: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->g:Z

    return v0
.end method

.method private j()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/a/d/e/b/b;->c()Lcom/iflytek/cloud/a/d/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/b;->b()I

    move-result v0

    iget v2, p0, Lcom/iflytek/cloud/a/d/e/b/a;->t:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    .line 4
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/b;->f()I

    move-result v0

    iget v2, p0, Lcom/iflytek/cloud/a/d/e/b/a;->s:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    .line 5
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/b;->e()I

    move-result v0

    iget v2, p0, Lcom/iflytek/cloud/a/d/e/b/a;->u:I

    if-eq v0, v2, :cond_2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/b;->h()V

    .line 8
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/b;->a()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    :cond_1
    const-string v0, "create new audio recorder"

    .line 10
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 11
    iget v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->t:I

    iget v2, p0, Lcom/iflytek/cloud/a/d/e/b/a;->s:I

    iget v3, p0, Lcom/iflytek/cloud/a/d/e/b/a;->u:I

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/a/d/e/b/b;->a(III)Lcom/iflytek/cloud/a/d/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->r:Lcom/iflytek/cloud/a/d/e/b/a$c;

    iget-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    .line 14
    invoke-virtual {v2}, Lcom/iflytek/cloud/a/d/e/b/b;->d()Lcom/iflytek/cloud/a/d/e/b/b$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Current record listener is not this, recorder will be stoped."

    .line 15
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/b;->h()V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->getShowLog()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/iflytek/cloud/msc/util/log/DebugLog$a;->b:Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->getLogLevel()Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-lt v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/d/e/b/b;->a(Z)V

    .line 18
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/b;->g()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "start audio recording."

    .line 19
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->r:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/d/e/b/b;->a(Lcom/iflytek/cloud/a/d/e/b/b$c;)I

    move-result v1

    goto :goto_1

    :cond_5
    const-string v0, "audio recorder is recording."

    .line 21
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/16 v1, 0x697d

    goto :goto_1

    :cond_7
    const/16 v1, 0x6980

    :goto_1
    return v1
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    if-eqz v0, :cond_0

    const-string v0, "stop audio record"

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/b;->h()V

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->r:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/a$c;->b()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  setParameter enter key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->f:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "aimic  setParameter sync"

    .line 41
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const-string v1, "aimic_asr_buffer_time"

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->m:I

    .line 44
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/a;->l:Lcom/iflytek/cloud/a/d/e/b/a$b;

    invoke-virtual {p2, p1}, Lcom/iflytek/cloud/a/d/e/b/a$b;->a(I)V

    goto :goto_0

    :cond_0
    const-string v1, "alsa_rate"

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->s:I

    goto :goto_0

    :cond_1
    const-string v1, "alsa_card"

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->t:I

    goto :goto_0

    :cond_2
    const-string v1, "alsa_per_size"

    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->u:I

    goto :goto_0

    :cond_3
    const-string v1, "alsa_save"

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->r:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-direct {p0, p2}, Lcom/iflytek/cloud/a/d/e/b/a;->d(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/iflytek/cloud/a/d/e/b/a$c;->a(Z)V

    goto :goto_0

    :cond_4
    const-string v1, "audio_source"

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->v:I

    :goto_0
    const/4 p1, 0x0

    goto/16 :goto_2

    :cond_5
    const-string v1, "buf_mode"

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->k:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 57
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    const-wide/32 v2, 0xf0000

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/e/b/c;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/a/d/e/b/c;->a(J)V

    goto :goto_1

    .line 58
    :cond_6
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    const-wide/32 v2, 0x78000

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/e/b/c;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/a/d/e/b/c;->a(J)V

    .line 59
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a;->i()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "aimic  setParameter Native"

    .line 60
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v1

    .line 62
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/d;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 63
    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/d;->a(Ljava/lang/String;)[B

    move-result-object p2

    .line 64
    invoke-static {v1, v2, p1, p2}, Lcom/iflytek/msc/AIMIC;->AIMICSetParam(J[B[B)I

    move-result p1

    goto :goto_2

    :cond_7
    const-string v1, "thread_priority"

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 66
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a;->i()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "aimic  setParameter Native"

    .line 67
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v1

    .line 69
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/d;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 70
    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/d;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 71
    invoke-static {v1, v2, p1, v3}, Lcom/iflytek/msc/AIMIC;->AIMICSetParam(J[B[B)I

    move-result p1

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 73
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->j:Lcom/iflytek/cloud/a/d/e/b/a$d;

    invoke-virtual {v1, p2}, Lcom/iflytek/cloud/a/d/e/b/a$d;->a(I)V

    goto :goto_2

    .line 74
    :cond_8
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a;->i()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "aimic  setParameter Native"

    .line 75
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v1

    .line 77
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/d;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 78
    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/d;->a(Ljava/lang/String;)[B

    move-result-object p2

    .line 79
    invoke-static {v1, v2, p1, p2}, Lcom/iflytek/msc/AIMIC;->AIMICSetParam(J[B[B)I

    move-result p1

    goto :goto_2

    :cond_9
    const/16 p1, 0x6980

    .line 80
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 81
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 p1, 0x5207

    goto :goto_3

    :catch_0
    move-exception p1

    .line 82
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 p1, 0x4e35

    .line 83
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "aimic  setParameter leave: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return p1
.end method

.method public a([BII)I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/cloud/a/d/e/b/a;->b([BII)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x6980

    const-string p2, "write audio while not init!"

    .line 87
    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 88
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 5

    const-string v0, "aimic destroy enter"

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->g:Z

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->l:Lcom/iflytek/cloud/a/d/e/b/a$b;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/e/b/a$b;->a()V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/e/b/b;->h()V

    .line 9
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/e/b/b;->a()V

    .line 10
    iput-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    .line 11
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 12
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->j:Lcom/iflytek/cloud/a/d/e/b/a$d;

    monitor-enter v1

    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->j:Lcom/iflytek/cloud/a/d/e/b/a$d;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->j:Lcom/iflytek/cloud/a/d/e/b/a$d;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 15
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 16
    sget-object v0, Lcom/iflytek/cloud/a/d/e/b/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_2
    sget-object v1, Lcom/iflytek/cloud/a/d/e/b/a;->a:Lcom/iflytek/cloud/a/d/e/b/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 18
    :try_start_3
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/iflytek/msc/AIMIC;->AIMICDestroy(J)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 19
    :try_start_4
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 20
    :goto_0
    sput-object v2, Lcom/iflytek/cloud/a/d/e/b/a;->a:Lcom/iflytek/cloud/a/d/e/b/a;

    .line 21
    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 22
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v0, "aimic destroy leave"

    .line 23
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v1

    .line 24
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    .line 25
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 26
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method public a(Lcom/iflytek/cloud/a/d/e/a$a;)V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  registerListener enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->l:Lcom/iflytek/cloud/a/d/e/b/a$b;

    invoke-virtual {v1, p1}, Lcom/iflytek/cloud/a/d/e/b/a$b;->a(Lcom/iflytek/cloud/a/d/e/a$a;)V

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "aimic  registerListener leave"

    .line 37
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/iflytek/cloud/a/d/e/a$b;)V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  registerListener enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->l:Lcom/iflytek/cloud/a/d/e/b/a$b;

    invoke-virtual {v1, p1}, Lcom/iflytek/cloud/a/d/e/b/a$b;->a(Lcom/iflytek/cloud/a/d/e/a$b;)V

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "aimic  setParameter leave"

    .line 31
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ZI)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->setShowLog(Z)V

    .line 91
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog$a;->values()[Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->setLogLevel(Lcom/iflytek/cloud/msc/util/log/DebugLog$a;)V

    .line 92
    invoke-static {p1, p2}, Lcom/iflytek/msc/AIMIC;->AIMICDebugLog(ZI)V

    .line 93
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 94
    sget-object p1, Lcom/iflytek/cloud/msc/util/log/DebugLog$a;->b:Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/iflytek/cloud/a/d/e/b/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 95
    :try_start_1
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 96
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "aimic  getParameter enter"

    .line 18
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->h:[B

    .line 20
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a;->i()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 22
    :try_start_1
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v2

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/d;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v2, v3, p1, v0}, Lcom/iflytek/msc/AIMIC;->AIMICGetParam(J[B[B)I

    move-result p1

    if-nez p1, :cond_0

    .line 23
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/d;->a([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get parameter error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 25
    :try_start_2
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 26
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  getParameter leave: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-object p1

    :catchall_1
    move-exception p1

    .line 28
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public b(Lcom/iflytek/cloud/a/d/e/a$a;)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  unregisterListener enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->l:Lcom/iflytek/cloud/a/d/e/b/a$b;

    invoke-virtual {v1, p1}, Lcom/iflytek/cloud/a/d/e/b/a$b;->b(Lcom/iflytek/cloud/a/d/e/a$a;)V

    .line 13
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->l:Lcom/iflytek/cloud/a/d/e/b/a$b;

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/d/e/b/a$b;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/d/e/b/a;->g()V

    .line 15
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "aimic  unregisterListener leave"

    .line 16
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Lcom/iflytek/cloud/a/d/e/a$b;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  unregisterListener enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->l:Lcom/iflytek/cloud/a/d/e/b/a$b;

    invoke-virtual {v1, p1}, Lcom/iflytek/cloud/a/d/e/b/a$b;->b(Lcom/iflytek/cloud/a/d/e/a$b;)V

    .line 5
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->l:Lcom/iflytek/cloud/a/d/e/b/a$b;

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/d/e/b/a$b;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/d/e/b/a;->g()V

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "aimic  unregisterListener leave"

    .line 8
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e()I
    .locals 3

    const-string v0, "aimic  reset enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/iflytek/msc/AIMIC;->AIMICResetEng(J)I

    move-result v1
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x6980

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 v1, 0x5207

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 v1, 0x4e35

    goto :goto_0

    :catch_1
    move-exception v1

    .line 7
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    .line 9
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic  reset leave: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return v1

    :catchall_1
    move-exception v1

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public f()I
    .locals 5

    const-string v0, "aimic  startListening enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->w:Z

    if-nez v1, :cond_0

    const-string v1, "aimic  startListening clear old datas."

    .line 4
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/e/b/c;->a()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v1, -0x3

    .line 7
    iget v3, p0, Lcom/iflytek/cloud/a/d/e/b/a;->v:I

    if-ne v1, v3, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a;->j()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-ne v1, v3, :cond_3

    .line 9
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->q:Lcom/iflytek/cloud/a/d/e/b/b;

    if-eqz v1, :cond_2

    const/16 v1, 0x6986

    const-string v3, "startListening failed, current internal recorder is not stoped!"

    .line 10
    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/16 v1, 0x6984

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startListening failed, invalid audio source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/iflytek/cloud/a/d/e/b/a;->v:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x6980

    :goto_0
    if-nez v1, :cond_5

    const/4 v2, 0x1

    .line 12
    :cond_5
    iput-boolean v2, p0, Lcom/iflytek/cloud/a/d/e/b/a;->w:Z

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic  startListening leave: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 2

    const-string v0, "aimic  stopListening enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->l:Lcom/iflytek/cloud/a/d/e/b/a$b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/e/b/a$b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "AIMic Listener is empty, audio recorder will stop recording."

    .line 4
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a;->k()V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/iflytek/cloud/a/d/e/b/a;->w:Z

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "aimic  stopListening leave"

    .line 8
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
