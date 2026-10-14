.class public Lcom/iflytek/cloud/msc/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = true

.field private static final b:Ljava/util/regex/Pattern;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[0-3][0-9a-f]{32}"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/msc/util/k;->b:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/iflytek/cloud/msc/util/k;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ".2F6E2C5B63F0F83B"

    .line 3
    invoke-static {p0, v0}, Lcom/iflytek/cloud/msc/util/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "com.iflytek.id"

    const-string v2, "pref.deviceid.key"

    .line 5
    invoke-static {p0, v1, v2, v0}, Lcom/iflytek/cloud/msc/util/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/cloud/msc/util/k$a;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/cloud/msc/util/k$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-object v0

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/cloud/msc/util/k$b;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/cloud/msc/util/k$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 12
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mounted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 13
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create file:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 14
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/msc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 16
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 17
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x21

    new-array p0, p0, [B

    .line 19
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 20
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 21
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 22
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 32
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/k;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const/16 v4, 0x30

    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/iflytek/cloud/msc/util/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/iflytek/cloud/msc/util/k;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    .line 23
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 25
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/16 p1, 0x9

    .line 26
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/k;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "setReadable"

    const/4 v1, 0x2

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 28
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v5

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 444 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 30
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static a(I)Z
    .locals 1

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 6
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->b(Landroid/content/Context;)Lcom/iflytek/cloud/b/a;

    move-result-object p0

    const-string v0, "os.imei"

    .line 7
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "os.android_id"

    .line 8
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    sget-boolean p0, Lcom/iflytek/cloud/msc/util/k;->a:Z

    if-eqz p0, :cond_1

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/Throwable;)V

    return-object p3
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/msc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p2}, Lcom/iflytek/cloud/msc/util/k;->a(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private static final b(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/iflytek/cloud/msc/util/k;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 6
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/iflytek/cloud/msc/util/k;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/msc/util/k;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/iflytek/cloud/msc/util/k;->c:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object p0, Lcom/iflytek/cloud/msc/util/k;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
