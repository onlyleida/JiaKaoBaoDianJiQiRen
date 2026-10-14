.class public Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;
.super Lcn/mucang/android/jiakaoyi/signal/com/x/a;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

.field private final b:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

.field private c:Z

.field private final d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;Lcn/mucang/android/jiakaoyi/signal/com/u/a;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/x/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->b:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->c:Z

    return-void
.end method


# virtual methods
.method public a([BIZIII)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    if-eqz p3, :cond_5

    .line 1
    array-length v1, v9

    if-gt v1, v10, :cond_0

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->b:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

    const/4 v3, 0x0

    array-length v4, v9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v5, p2

    invoke-interface/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/signal/com/u/a;->b([BIIIZSZ)[B

    move-result-object v2

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move/from16 v3, p2

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/signal/com/x/a;->a([BIZIII)Z

    move-result v1

    return v1

    :cond_0
    if-lez v10, :cond_4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 4
    :cond_1
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->c:Z

    if-eqz v1, :cond_3

    add-int v1, v12, v10

    .line 5
    array-length v2, v9

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v14, v1, v12

    .line 6
    array-length v2, v9

    const/4 v15, 0x1

    if-lt v1, v2, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    .line 7
    :goto_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->b:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move v3, v12

    move v4, v14

    move/from16 v5, p2

    move v7, v13

    move/from16 v8, v16

    invoke-interface/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/signal/com/u/a;->b([BIIIZSZ)[B

    move-result-object v2

    .line 8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

    const/4 v4, 0x1

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->b:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

    invoke-interface {v3}, Lcn/mucang/android/jiakaoyi/signal/com/u/a;->a()S

    move-result v7

    move/from16 v3, p2

    move v5, v14

    move v6, v13

    invoke-virtual/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/signal/com/x/a;->a([BIZIII)Z

    add-int/2addr v12, v14

    add-int/2addr v13, v15

    int-to-short v13, v13

    if-eqz v16, :cond_1

    return v15

    :cond_3
    return v11

    .line 9
    :cond_4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorSplit:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5206\u5305\u957f\u5ea6\u9519\u8bef:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v1

    .line 10
    :cond_5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->b:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

    const/4 v3, 0x0

    array-length v4, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v5, p2

    invoke-interface/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/signal/com/u/a;->b([BIIIZSZ)[B

    move-result-object v2

    .line 11
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

    const/4 v4, 0x0

    move/from16 v3, p2

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/signal/com/x/a;->a([BIZIII)Z

    move-result v1

    return v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->c:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method
