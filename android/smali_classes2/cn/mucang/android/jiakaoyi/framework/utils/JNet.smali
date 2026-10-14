.class public Lcn/mucang/android/jiakaoyi/framework/utils/JNet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;
    }
.end annotation


# static fields
.field private static a:I

.field private static final b:[Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static volatile d:I

.field private static volatile e:Z

.field private static volatile f:I

.field private static g:Z

.field private static final h:[I

.field private static final i:[I

.field private static j:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "1234.kakamobi.cn"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->d:I

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->e:Z

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->None:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    .line 5
    sput v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->f:I

    .line 6
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->g:Z

    const/16 v1, 0xd

    new-array v2, v1, [I

    .line 7
    sput-object v2, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->h:[I

    new-array v1, v1, [I

    .line 8
    sput-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->i:[I

    aput v0, v1, v0

    const/4 v0, 0x1

    const/16 v2, 0x32

    aput v2, v1, v0

    const/4 v0, 0x2

    const/16 v2, 0x64

    aput v2, v1, v0

    const/4 v0, 0x3

    const/16 v2, 0xc8

    aput v2, v1, v0

    const/4 v0, 0x4

    const/16 v2, 0x12c

    aput v2, v1, v0

    const/4 v0, 0x5

    const/16 v2, 0x190

    aput v2, v1, v0

    const/4 v0, 0x6

    const/16 v2, 0x1f4

    aput v2, v1, v0

    const/4 v0, 0x7

    const/16 v2, 0x258

    aput v2, v1, v0

    const/16 v0, 0x8

    const/16 v2, 0x2bc

    aput v2, v1, v0

    const/16 v0, 0x9

    const/16 v2, 0x320

    aput v2, v1, v0

    const/16 v0, 0xa

    const/16 v2, 0x384

    aput v2, v1, v0

    const/16 v0, 0xb

    const/16 v2, 0x3e8

    aput v2, v1, v0

    const/16 v0, 0xc

    const/16 v2, 0x7d0

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->j:Ljava/lang/Process;

    return-void
.end method

.method private static a()V
    .locals 9

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget v6, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->d:I

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v2, v6, :cond_1

    if-ltz v2, :cond_1

    .line 5
    monitor-enter v0

    .line 6
    :try_start_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->h:[I

    array-length v7, v2

    sub-int/2addr v7, v5

    aget v8, v2, v7

    add-int/2addr v8, v5

    aput v8, v2, v7

    .line 7
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->e:Z

    const/16 v2, 0x7d0

    .line 8
    sput v2, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->f:I

    .line 9
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->DisConnect:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x2

    if-lt v4, v2, :cond_0

    .line 10
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/utils/k;->a:Lcn/mucang/android/jiakaoyi/framework/utils/k;

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 12
    :cond_1
    :goto_1
    rem-int/lit8 v2, v3, 0x3c

    if-nez v2, :cond_7

    .line 13
    monitor-enter v0

    .line 14
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-static {}, Lcn/mucang/android/core/utils/x;->b()Landroid/net/NetworkInfo;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v7, "-1:0,"

    .line 16
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-nez v8, :cond_3

    const-string v7, "-1:2,"

    .line 18
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 19
    :cond_3
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v8, v5, :cond_4

    const-string v7, "-1:3,"

    .line 20
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_5

    const-string v7, "-1:1,"

    .line 22
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v7, "-1:0,"

    .line 23
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :goto_2
    sget-object v7, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->i:[I

    aget v7, v7, v1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->h:[I

    aget v7, v7, v1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    :goto_3
    sget-object v7, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->h:[I

    array-length v8, v7

    if-ge v5, v8, :cond_6

    const-string v8, ","

    .line 26
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->i:[I

    aget v8, v8, v5

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v7, v5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 27
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->p(Ljava/lang/Object;)V

    .line 28
    invoke-static {v7, v1}, Ljava/util/Arrays;->fill([II)V

    .line 29
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_7
    :goto_4
    const-wide/16 v7, 0x7d0

    .line 30
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 31
    sget v2, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->d:I

    const v5, 0x7ffffff5

    if-le v2, v5, :cond_8

    return-void

    :cond_8
    move v2, v6

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    .line 32
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public static b()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->f:I

    return v0
.end method

.method private static c()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->j:Ljava/lang/Process;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nettag"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy process : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->j:Ljava/lang/Process;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->j:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "nettag"

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process destroy error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->b:[Ljava/lang/String;

    sget v1, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->a:I

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 9
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cbping\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -i 2 -s 16 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 12
    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->j:Ljava/lang/Process;

    const-string v0, "time="

    .line 13
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 14
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->h:[I

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "ms"

    .line 16
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    if-lez v6, :cond_a

    if-lez v7, :cond_a

    if-le v7, v6, :cond_a

    .line 17
    sput-boolean v5, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->e:Z

    add-int/lit8 v6, v6, 0x5

    .line 18
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0x44fa0000    # 2000.0f

    .line 19
    :try_start_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v7, v6, v4

    float-to-int v7, v7

    if-ge v7, v5, :cond_5

    const/high16 v3, 0x42480000    # 50.0f

    cmpg-float v3, v6, v3

    if-gtz v3, :cond_3

    goto :goto_3

    :cond_3
    cmpg-float v3, v6, v4

    if-gez v3, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    move v8, v7

    goto :goto_3

    :cond_5
    const/16 v4, 0xa

    if-ge v7, v4, :cond_6

    add-int/lit8 v8, v7, 0x1

    goto :goto_3

    :cond_6
    const/16 v4, 0x14

    if-ge v7, v4, :cond_7

    .line 20
    array-length v3, v3

    add-int/lit8 v8, v3, -0x2

    goto :goto_3

    .line 21
    :cond_7
    array-length v3, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v8, v3, -0x1

    :goto_3
    move v4, v8

    goto :goto_4

    .line 22
    :catchall_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->h:[I

    array-length v3, v3

    sub-int/2addr v3, v5

    move v4, v3

    :goto_4
    const/high16 v3, 0x42f00000    # 120.0f

    cmpg-float v3, v6, v3

    if-gtz v3, :cond_8

    .line 23
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->Good:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    goto :goto_5

    :cond_8
    const/high16 v3, 0x43fa0000    # 500.0f

    cmpg-float v3, v6, v3

    if-gtz v3, :cond_9

    .line 24
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->Normal:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    goto :goto_5

    .line 25
    :cond_9
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->Poor:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    :goto_5
    float-to-int v3, v6

    .line 26
    sput v3, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->f:I

    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v3, v6, v3

    if-lez v3, :cond_c

    .line 27
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "nettag"

    .line 28
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "nettag"

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "time = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    const-string v3, "16 data bytes"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 31
    sput v8, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->f:I

    .line 32
    sput-boolean v5, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->e:Z

    .line 33
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->Normal:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    const/4 v4, 0x0

    goto :goto_6

    .line 34
    :cond_b
    sput-boolean v8, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->e:Z

    const/16 v2, 0x7d0

    .line 35
    sput v2, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->f:I

    .line 36
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;->DisConnect:Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    .line 37
    :cond_c
    :goto_6
    const-class v2, Lcn/mucang/android/jiakaoyi/framework/utils/JNet$NetState;

    monitor-enter v2

    .line 38
    :try_start_2
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->h:[I

    aget v6, v3, v4

    add-int/2addr v6, v5

    aput v6, v3, v4

    .line 39
    sget v3, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->d:I

    add-int/2addr v3, v5

    sput v3, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->d:I

    .line 40
    monitor-exit v2

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_d
    return-void
.end method

.method private static d()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/g;->a:Lcn/mucang/android/jiakaoyi/framework/utils/g;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->e:Z

    return v0
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->a()V

    return-void
.end method

.method static synthetic g(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e GPS host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sput-object p0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->c:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->j()V

    return-void
.end method

.method static synthetic h()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nettag"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ping\u51fa\u9519:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->b:[Ljava/lang/String;

    sget v3, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->a:I

    array-length v4, v2

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->e:Z

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->a:I

    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/h;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/h;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static j()V
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->g:Z

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->d()V

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/i;->a:Lcn/mucang/android/jiakaoyi/framework/utils/i;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
