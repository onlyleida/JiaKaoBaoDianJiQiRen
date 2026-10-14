.class final Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/SelfCheckActivity;->checkNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 2
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v4, ""

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "ping -i 1 -s 16 www.baidu.com"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 4
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "p"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v6, 0x0

    .line 5
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    if-eqz v13, :cond_8

    const/4 v15, -0x1

    if-eqz v13, :cond_1

    const-string v8, "time="

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v13

    .line 6
    invoke-static/range {v7 .. v12}, Lkotlin/text/l;->T(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v7

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    :goto_0
    add-int/lit8 v12, v7, 0x5

    if-eqz v13, :cond_2

    const-string v8, "ms"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v15, 0x0

    move-object v7, v13

    move v4, v12

    move-object v12, v15

    .line 7
    invoke-static/range {v7 .. v12}, Lkotlin/text/l;->T(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v15

    goto :goto_1

    :cond_2
    move v4, v12

    :goto_1
    if-lez v4, :cond_7

    if-lez v15, :cond_7

    if-le v15, v4, :cond_7

    if-eqz v13, :cond_5

    if-eqz v13, :cond_4

    .line 8
    invoke-virtual {v13, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_5

    if-eqz v4, :cond_3

    invoke-static {v4}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v4, 0x0

    .line 9
    :goto_2
    iget v7, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpg-float v8, v7, v2

    if-eqz v8, :cond_6

    add-float/2addr v7, v4

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float v4, v7, v4

    :cond_6
    iput v4, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :cond_7
    add-int/2addr v6, v14

    const/4 v4, 0x4

    if-le v6, v4, :cond_0

    .line 10
    invoke-static {v5}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    :cond_8
    const-string v2, "http://sundial-app-file.mucang.cn/sundial-app/2022/11/08/18/f199b03138af454e877b60c5d0535d8b.txt"

    .line 11
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "speed.txt"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_9
    const/4 v5, 0x0

    .line 13
    invoke-static {v2, v4, v5}, Lcn/mucang/sundial/android/tcp/utils/UtilsKt;->downloadURLToFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)J

    move-result-wide v4

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0b\u8f7d1KB\u6587\u4ef6\u8017\u65f6: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_a

    .line 15
    sget-object v2, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    const-string v2, "\uff0c\u7f51\u901f%.1fKB/s"

    new-array v6, v14, [Ljava/lang/Object;

    const/high16 v7, 0x447a0000    # 1000.0f

    long-to-float v4, v4

    div-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v6, v5

    invoke-static {v6, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v2, "\u4e0b\u8f7d\u6d4b\u901f\u6587\u4ef6\u5931\u8d25"

    .line 16
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 17
    :cond_a
    :goto_3
    new-instance v2, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;

    invoke-direct {v2, v0, v1, v3}, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;-><init>(Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method
