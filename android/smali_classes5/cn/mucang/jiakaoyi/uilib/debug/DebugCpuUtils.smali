.class public final Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0007J\u0008\u0010\u0013\u001a\u00020\u0014H\u0003J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0016J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;",
        "",
        "()V",
        "KEY_DEBUG_CPU",
        "",
        "_state",
        "Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$State;",
        "ams",
        "Landroid/app/ActivityManager;",
        "memoryInfo",
        "Landroid/app/ActivityManager$MemoryInfo;",
        "window",
        "Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuWindow;",
        "convertToInt",
        "",
        "value",
        "defaultValue",
        "getCPURateDesc",
        "",
        "getRunningMemory",
        "",
        "hideWindow",
        "",
        "init",
        "isEnable",
        "",
        "showWindow",
        "State",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;

.field private static final b:Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;

.field private static c:Lcn/mucang/jiakaoyi/uilib/debug/i;

.field private static d:Landroid/app/ActivityManager$MemoryInfo;

.field private static e:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->b:Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Landroid/app/ActivityManager;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->e:Landroid/app/ActivityManager;

    return-object v0
.end method

.method public static final synthetic b(Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;)D
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->g()D

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic c()Lcn/mucang/jiakaoyi/uilib/debug/i;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->c:Lcn/mucang/jiakaoyi/uilib/debug/i;

    return-object v0
.end method

.method public static final synthetic d()Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->b:Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;

    return-object v0
.end method

.method private final e(Ljava/lang/Object;I)I
    .locals 8

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gt v4, v1, :cond_5

    if-nez v5, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    move v6, v1

    .line 3
    :goto_1
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 4
    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->g(II)I

    move-result v6

    if-gtz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-nez v5, :cond_3

    if-nez v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v1, v2

    .line 5
    invoke-interface {v0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    .line 8
    :cond_6
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 9
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 10
    :catch_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    double-to-int p2, p1

    .line 11
    :catch_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_4
    const-string p2, "try {\n            Intege\u2026}\n            }\n        }"

    .line 12
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p2

    :cond_7
    :goto_5
    return p2
.end method

.method public static final f()F
    .locals 20

    const-string v1, "/proc/stat"

    const/4 v2, 0x2

    new-array v3, v2, [J

    new-array v4, v2, [J

    const-string v0, " [0-9]+"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    const-string v0, "compile(\" [0-9]+\")"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v10, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    add-int/lit8 v11, v8, 0x1

    const-wide/16 v12, 0x0

    .line 2
    aput-wide v12, v3, v8

    .line 3
    aput-wide v12, v4, v8

    const/4 v14, 0x1

    .line 4
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v15, Ljava/io/BufferedReader;

    const/16 v12, 0x2000

    invoke-direct {v15, v0, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 6
    :goto_1
    :try_start_1
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    if-eqz v8, :cond_0

    if-ge v0, v9, :cond_8

    :cond_0
    if-nez v10, :cond_2

    :cond_1
    :goto_2
    const/4 v12, 0x0

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "(this as java.lang.String).toLowerCase()"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v12, :cond_3

    goto :goto_2

    :cond_3
    const-string v13, "cpu"

    invoke-static {v12, v13, v7, v2, v6}, Lkotlin/text/l;->B(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-ne v12, v14, :cond_1

    const/4 v12, 0x1

    :goto_3
    if-eqz v12, :cond_5

    add-int/lit8 v12, v0, 0x1

    .line 8
    invoke-virtual {v5, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v0, "pattern.matcher(str)"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 9
    :goto_4
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    .line 10
    :try_start_2
    invoke-virtual {v10, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "matcher.group(0)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 11
    aget-wide v18, v3, v8

    add-long v18, v18, v16

    aput-wide v18, v3, v8

    const/4 v0, 0x3

    if-ne v13, v0, :cond_4

    .line 12
    aget-wide v18, v4, v8

    add-long v18, v18, v16

    aput-wide v18, v4, v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 13
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    const/4 v2, 0x2

    goto :goto_4

    :cond_5
    move v12, v0

    :cond_6
    if-nez v8, :cond_7

    const-wide/16 v9, 0x32

    .line 14
    :try_start_4
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    move v9, v12

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 15
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    move v0, v12

    move v9, v0

    goto :goto_7

    :cond_7
    move v0, v12

    :goto_7
    const/4 v2, 0x2

    goto :goto_1

    .line 16
    :cond_8
    :try_start_6
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 17
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_8
    move-object v10, v15

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v10, v15

    goto :goto_c

    :catch_4
    move-exception v0

    :goto_9
    move-object v10, v15

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_c

    :catch_5
    move-exception v0

    .line 18
    :goto_a
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v10, :cond_9

    .line 19
    :try_start_8
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 20
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_b
    if-le v11, v14, :cond_b

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 21
    aget-wide v5, v3, v7

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-lez v2, :cond_a

    aget-wide v5, v3, v14

    cmp-long v2, v5, v8

    if-lez v2, :cond_a

    aget-wide v5, v3, v7

    aget-wide v8, v3, v14

    cmp-long v2, v5, v8

    if-eqz v2, :cond_a

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 22
    aget-wide v5, v3, v14

    aget-wide v8, v4, v14

    sub-long/2addr v5, v8

    aget-wide v8, v3, v7

    aget-wide v10, v4, v7

    sub-long/2addr v8, v10

    sub-long/2addr v5, v8

    long-to-double v4, v5

    mul-double v4, v4, v0

    aget-wide v0, v3, v14

    aget-wide v2, v3, v7

    sub-long/2addr v0, v2

    long-to-double v0, v0

    div-double v0, v4, v0

    :cond_a
    double-to-float v0, v0

    return v0

    :cond_b
    move v8, v11

    const/4 v2, 0x2

    goto/16 :goto_0

    :goto_c
    if-eqz v10, :cond_c

    .line 23
    :try_start_9
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 24
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_d
    throw v1
.end method

.method private final g()D
    .locals 10

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->e:Landroid/app/ActivityManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-array v5, v3, [I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    aput v6, v5, v4

    invoke-virtual {v2, v5}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    return-wide v0

    .line 2
    :cond_1
    array-length v5, v2

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    xor-int/2addr v3, v5

    if-eqz v3, :cond_3

    .line 3
    aget-object v3, v2, v4

    const-string v5, "summary.java-heap"

    invoke-virtual {v3, v5}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "memInfo[0].getMemoryStat(\"summary.java-heap\")"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    aget-object v5, v2, v4

    const-string v6, "summary.native-heap"

    invoke-virtual {v5, v6}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "memInfo[0].getMemoryStat(\"summary.native-heap\")"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    aget-object v6, v2, v4

    const-string v7, "summary.graphics"

    invoke-virtual {v6, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "memInfo[0].getMemoryStat(\"summary.graphics\")"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    aget-object v7, v2, v4

    const-string v8, "summary.stack"

    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "memInfo[0].getMemoryStat(\"summary.stack\")"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    aget-object v8, v2, v4

    const-string v9, "summary.code"

    invoke-virtual {v8, v9}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "memInfo[0].getMemoryStat(\"summary.code\")"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    aget-object v2, v2, v4

    const-string v9, "summary.system"

    invoke-virtual {v2, v9}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "memInfo[0].getMemoryStat(\"summary.system\")"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v3, v4}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->e(Ljava/lang/Object;I)I

    move-result v3

    .line 10
    invoke-direct {p0, v5, v4}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->e(Ljava/lang/Object;I)I

    move-result v5

    add-int/2addr v3, v5

    .line 11
    invoke-direct {p0, v6, v4}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->e(Ljava/lang/Object;I)I

    move-result v5

    add-int/2addr v3, v5

    .line 12
    invoke-direct {p0, v7, v4}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->e(Ljava/lang/Object;I)I

    move-result v5

    add-int/2addr v3, v5

    .line 13
    invoke-direct {p0, v8, v4}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->e(Ljava/lang/Object;I)I

    move-result v5

    add-int/2addr v3, v5

    .line 14
    invoke-direct {p0, v2, v4}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->e(Ljava/lang/Object;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v2

    if-ltz v3, :cond_3

    int-to-double v0, v3

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-wide v0
.end method


# virtual methods
.method public final h()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->c:Lcn/mucang/jiakaoyi/uilib/debug/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/debug/i;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->e:Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->d:Landroid/app/ActivityManager$MemoryInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/app/ActivityManager;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/app/ActivityManager;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    sput-object v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->e:Landroid/app/ActivityManager;

    .line 5
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->d:Landroid/app/ActivityManager$MemoryInfo;

    .line 6
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;

    invoke-direct {v5, v1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final j()Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "__key_debug_cpu"

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
