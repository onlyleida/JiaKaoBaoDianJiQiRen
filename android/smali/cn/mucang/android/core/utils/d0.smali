.class public Lcn/mucang/android/core/utils/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getVersion"

    .line 2
    invoke-static {v0}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/core/utils/d0;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 4
    const-class v0, Lcn/mucang/android/core/utils/d0;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcn/mucang/android/core/utils/d0;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 6
    invoke-static {}, Lcn/mucang/android/core/utils/d0;->d()V

    .line 7
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Lcn/mucang/android/core/utils/d0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-object p0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_0
    :try_start_2
    const-string v3, "RomUtil"

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read prop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v1}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v2

    :goto_1
    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 7
    throw p0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getVersion"

    .line 2
    invoke-static {v0}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/core/utils/d0;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 4
    const-class v0, Lcn/mucang/android/core/utils/d0;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcn/mucang/android/core/utils/d0;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 6
    invoke-static {}, Lcn/mucang/android/core/utils/d0;->d()V

    .line 7
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Lcn/mucang/android/core/utils/d0;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static d()V
    .locals 3

    const-string v0, "EMUI"

    const-string v1, "ro.build.version.emui"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/d0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OPPO"

    const-string v1, "ro.build.version.opporom"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/d0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "VIVO"

    const-string v1, "ro.vivo.os.version"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/d0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "SMARTISAN"

    const-string v1, "ro.smartisan.version"

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/d0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-string v0, "ro.miui.ui.version.name"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/d0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "MIUI"

    .line 7
    sput-object v0, Lcn/mucang/android/core/utils/d0;->a:Ljava/lang/String;

    const-string v0, "ro.build.version.incremental"

    .line 8
    invoke-static {v0}, Lcn/mucang/android/core/utils/d0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/utils/d0;->b:Ljava/lang/String;

    return-void

    .line 9
    :cond_4
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FLYME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    sput-object v2, Lcn/mucang/android/core/utils/d0;->a:Ljava/lang/String;

    .line 12
    sput-object v0, Lcn/mucang/android/core/utils/d0;->b:Ljava/lang/String;

    return-void

    .line 13
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/utils/d0;->b:Ljava/lang/String;

    .line 14
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/utils/d0;->a:Ljava/lang/String;

    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/d0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sput-object p0, Lcn/mucang/android/core/utils/d0;->a:Ljava/lang/String;

    .line 4
    sput-object p1, Lcn/mucang/android/core/utils/d0;->b:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
