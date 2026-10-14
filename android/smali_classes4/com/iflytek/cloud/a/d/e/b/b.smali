.class public Lcom/iflytek/cloud/a/d/e/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/a/d/e/b/b$b;,
        Lcom/iflytek/cloud/a/d/e/b/b$c;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;

.field private static d:Lcom/iflytek/cloud/a/d/e/b/b;


# instance fields
.field private e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/reflect/Method;

.field private i:Ljava/lang/reflect/Method;

.field private j:Ljava/lang/reflect/Method;

.field private k:Ljava/lang/reflect/Method;

.field private l:Ljava/lang/reflect/Method;

.field private m:Ljava/lang/reflect/Method;

.field private n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/reflect/Method;

.field private p:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/reflect/Method;

.field private r:Ljava/lang/Object;

.field private final s:Lcom/iflytek/cloud/a/d/e/b/b$b;

.field private t:Ljava/lang/Object;

.field private u:Lcom/iflytek/cloud/a/d/e/b/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/a/d/e/b/b;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->e:Ljava/lang/Class;

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->f:Ljava/lang/reflect/Method;

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->g:Ljava/lang/reflect/Method;

    .line 5
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->h:Ljava/lang/reflect/Method;

    .line 6
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->i:Ljava/lang/reflect/Method;

    .line 7
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->j:Ljava/lang/reflect/Method;

    .line 8
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->k:Ljava/lang/reflect/Method;

    .line 9
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->l:Ljava/lang/reflect/Method;

    .line 10
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->m:Ljava/lang/reflect/Method;

    .line 11
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->n:Ljava/lang/Class;

    .line 12
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->o:Ljava/lang/reflect/Method;

    .line 13
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->p:Ljava/lang/Class;

    .line 14
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->q:Ljava/lang/reflect/Method;

    .line 15
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->r:Ljava/lang/Object;

    .line 16
    new-instance v1, Lcom/iflytek/cloud/a/d/e/b/b$b;

    invoke-direct {v1, p0, v0}, Lcom/iflytek/cloud/a/d/e/b/b$b;-><init>(Lcom/iflytek/cloud/a/d/e/b/b;Lcom/iflytek/cloud/a/d/e/b/b$a;)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->s:Lcom/iflytek/cloud/a/d/e/b/b$b;

    .line 17
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->t:Ljava/lang/Object;

    .line 18
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->u:Lcom/iflytek/cloud/a/d/e/b/b$c;

    const-string v2, "com.iflytek.alsa.AlsaRecorder$PcmListener"

    .line 19
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/b;->n:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 20
    const-class v5, [B

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v8, "onPcmData"

    invoke-virtual {v2, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/b;->o:Ljava/lang/reflect/Method;

    .line 21
    iget-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/b;->n:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Class;

    iget-object v8, p0, Lcom/iflytek/cloud/a/d/e/b/b;->n:Ljava/lang/Class;

    aput-object v8, v4, v6

    invoke-static {v2, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->t:Ljava/lang/Object;

    const-string v1, "com.iflytek.alsa.AlsaRecorder"

    .line 22
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->e:Ljava/lang/Class;

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v6

    aput-object v5, v4, v7

    aput-object v5, v4, v3

    const-string v5, "createInstance"

    .line 23
    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->r:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->e:Ljava/lang/Class;

    new-array p2, v7, [Ljava/lang/Class;

    iget-object p3, p0, Lcom/iflytek/cloud/a/d/e/b/b;->n:Ljava/lang/Class;

    aput-object p3, p2, v6

    const-string p3, "startRecording"

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->f:Ljava/lang/reflect/Method;

    .line 26
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->e:Ljava/lang/Class;

    sget-object p2, Lcom/iflytek/cloud/a/d/e/b/b;->a:[Ljava/lang/Class;

    const-string p3, "stopRecording"

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->g:Ljava/lang/reflect/Method;

    .line 27
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->e:Ljava/lang/Class;

    const-string p3, "destroy"

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->m:Ljava/lang/reflect/Method;

    .line 28
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->e:Ljava/lang/Class;

    const-string p3, "getCardDevId"

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->i:Ljava/lang/reflect/Method;

    .line 29
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->e:Ljava/lang/Class;

    const-string p3, "getListener"

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->l:Ljava/lang/reflect/Method;

    .line 30
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->e:Ljava/lang/Class;

    const-string p3, "getPeriodSize"

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->k:Ljava/lang/reflect/Method;

    .line 31
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->e:Ljava/lang/Class;

    const-string p3, "getSampleRate"

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->j:Ljava/lang/reflect/Method;

    .line 32
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->e:Ljava/lang/Class;

    const-string p3, "isRecording"

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->h:Ljava/lang/reflect/Method;

    const-string p1, "com.iflytek.alsa.jni.AlsaJni"

    .line 33
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->p:Ljava/lang/Class;

    new-array p2, v7, [Ljava/lang/Class;

    .line 34
    sget-object p3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object p3, p2, v6

    const-string p3, "showJniLog"

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->q:Ljava/lang/reflect/Method;

    return-void

    :cond_0
    const-string p1, "Recorder create alsa failed!"

    .line 35
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 36
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static a(III)Lcom/iflytek/cloud/a/d/e/b/b;
    .locals 2

    .line 2
    sget-object v0, Lcom/iflytek/cloud/a/d/e/b/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/a/d/e/b/b;->d:Lcom/iflytek/cloud/a/d/e/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 4
    :try_start_1
    new-instance v1, Lcom/iflytek/cloud/a/d/e/b/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/iflytek/cloud/a/d/e/b/b;-><init>(III)V

    sput-object v1, Lcom/iflytek/cloud/a/d/e/b/b;->d:Lcom/iflytek/cloud/a/d/e/b/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5
    :try_start_2
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 6
    :cond_0
    :goto_0
    sget-object p0, Lcom/iflytek/cloud/a/d/e/b/b;->d:Lcom/iflytek/cloud/a/d/e/b/b;

    .line 7
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method static synthetic a(Lcom/iflytek/cloud/a/d/e/b/b;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->o:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic b(Lcom/iflytek/cloud/a/d/e/b/b;)Lcom/iflytek/cloud/a/d/e/b/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->u:Lcom/iflytek/cloud/a/d/e/b/b$c;

    return-object p0
.end method

.method public static c()Lcom/iflytek/cloud/a/d/e/b/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/iflytek/cloud/a/d/e/b/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/a/d/e/b/b;->d:Lcom/iflytek/cloud/a/d/e/b/b;

    .line 3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/a/d/e/b/b$c;)I
    .locals 5

    .line 8
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->u:Lcom/iflytek/cloud/a/d/e/b/b$c;

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->f:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->r:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/iflytek/cloud/a/d/e/b/b;->n:Ljava/lang/Class;

    iget-object v4, p0, Lcom/iflytek/cloud/a/d/e/b/b;->t:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 p1, 0x5207

    :goto_0
    return p1
.end method

.method public a()V
    .locals 3

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->m:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->r:Ljava/lang/Object;

    sget-object v2, Lcom/iflytek/cloud/a/d/e/b/b;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 13
    :goto_0
    sget-object v0, Lcom/iflytek/cloud/a/d/e/b/b;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 14
    :try_start_1
    sput-object v1, Lcom/iflytek/cloud/a/d/e/b/b;->d:Lcom/iflytek/cloud/a/d/e/b/b;

    .line 15
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public a(Z)V
    .locals 4

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->q:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->i:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->r:Ljava/lang/Object;

    sget-object v2, Lcom/iflytek/cloud/a/d/e/b/b;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public d()Lcom/iflytek/cloud/a/d/e/b/b$c;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->u:Lcom/iflytek/cloud/a/d/e/b/b$c;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/b;->l:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/iflytek/cloud/a/d/e/b/b;->r:Ljava/lang/Object;

    sget-object v4, Lcom/iflytek/cloud/a/d/e/b/b;->b:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/iflytek/cloud/a/d/e/b/b;->t:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recorder getListener alsa listener unequal to current object: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :goto_0
    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public e()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->k:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->r:Ljava/lang/Object;

    sget-object v2, Lcom/iflytek/cloud/a/d/e/b/b;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public f()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->j:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->r:Ljava/lang/Object;

    sget-object v2, Lcom/iflytek/cloud/a/d/e/b/b;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->h:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->r:Ljava/lang/Object;

    sget-object v2, Lcom/iflytek/cloud/a/d/e/b/b;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/b;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/b;->r:Ljava/lang/Object;

    sget-object v2, Lcom/iflytek/cloud/a/d/e/b/b;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
