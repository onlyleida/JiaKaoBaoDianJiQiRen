.class public Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcn/mucang/android/jiakaoyi/signal/ai/c;

.field private c:Z

.field private d:Z

.field private volatile e:Z

.field private final f:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/signal/ai/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/signal/ai/g;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/signal/ai/ota/d;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$d;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$d;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b:Lcn/mucang/android/jiakaoyi/signal/ai/c;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->f:Landroidx/lifecycle/a0;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->g:Landroidx/lifecycle/a0;

    .line 6
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$b;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$b;-><init>(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->h:Landroidx/lifecycle/a0;

    .line 7
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$c;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$c;-><init>(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->i:Landroidx/lifecycle/a0;

    .line 8
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->j:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$d;

    .line 9
    const-class p1, Lcn/mucang/android/jiakaoyi/signal/ai/c;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 10
    const-class p1, Lcn/mucang/android/jiakaoyi/signal/ai/g;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 11
    const-class p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 12
    const-class p1, Lcn/mucang/android/jiakaoyi/signal/ai/ota/d;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->c:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->d:Z

    .line 15
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->e:Z

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->d:Z

    return p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;IZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->o(IZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->c:Z

    return p0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->c:Z

    return p1
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->g(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private g(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xaa

    if-eq p1, v0, :cond_0

    const-string p1, "\u5176\u4ed6\u9519\u8bef"

    return-object p1

    :cond_0
    const-string p1, "\u5347\u7ea7\u6210\u529f"

    return-object p1

    :cond_1
    const-string p1, "\u5f00\u59cb\u5347\u7ea7"

    return-object p1

    :cond_2
    const-string p1, "AI\u6587\u4ef6\u4e0b\u8f7d\u6210\u529f\uff0c\u4f46\u6821\u9a8c\u5931\u8d25"

    return-object p1

    :cond_3
    const-string p1, "AI\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    return-object p1

    :cond_4
    const-string p1, "\u7248\u672c\u76f8\u540c\uff0c\u4e0d\u9700\u8981\u5347\u7ea7"

    return-object p1

    :cond_5
    const-string p1, "\u6b63\u5728\u4e0b\u8f7d"

    return-object p1
.end method

.method private h()V
    .locals 8

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/ai/h/a;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xaa

    const-string v2, "V1\u7248\u672c\u4e0d\u9700\u8981\u66f4\u65b0"

    .line 2
    invoke-direct {p0, v0, v1, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->o(IZZLjava/lang/String;)V

    const-string v0, "V1\u7248\u672c\u4e0d\u9700\u8981\u66f4\u65b0"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->c:Z

    .line 5
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->d:Z

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x5

    if-gt v2, v4, :cond_3

    const-string v2, "\u67e5\u8be2ai\u4fe1\u606f"

    .line 6
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v2

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiQueryInfo:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v6, 0x2

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    invoke-virtual {v2, v4, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    :try_start_0
    const-string v2, "\u7b49\u5f85ai\u67e5\u8be2\u7ed3\u679c"

    .line 8
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b:Lcn/mucang/android/jiakaoyi/signal/ai/c;

    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->a:Ljava/lang/Object;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 12
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 13
    :cond_1
    :goto_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b:Lcn/mucang/android/jiakaoyi/signal/ai/c;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_0

    .line 14
    :catch_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->d:Z

    const-string v2, "AI\u7248\u672c\u4fe1\u606f\u672c\u5730\u67e5\u8be2\u5931\u8d25"

    invoke-direct {p0, v5, v1, v0, v2}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->o(IZZLjava/lang/String;)V

    const-string v0, "ai\u7248\u672c\u4fe1\u606f\u67e5\u8be2\u5931\u8d25"

    .line 15
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    .line 16
    :cond_3
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b49\u5f85ai\u5347\u7ea7\u4fe1\u606f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b:Lcn/mucang/android/jiakaoyi/signal/ai/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 17
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/f;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/f;-><init>()V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b:Lcn/mucang/android/jiakaoyi/signal/ai/c;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/ai/c;->b:I

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/f;->m(I)Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_7

    .line 18
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->version:I

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b:Lcn/mucang/android/jiakaoyi/signal/ai/c;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/ai/c;->b:I

    if-gt v3, v4, :cond_4

    goto/16 :goto_4

    .line 19
    :cond_4
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->force:Z

    xor-int/2addr v3, v1

    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->d:Z

    .line 20
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->md5:Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->filePath:Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_3

    .line 21
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ai\u5347\u7ea7\u4fe1\u606f:\u5f53\u524d\u7248\u672c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b:Lcn/mucang/android/jiakaoyi/signal/ai/c;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/ai/c;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\uff0c\u670d\u52a1\u5668\u6700\u65b0\u7248\u672c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",filePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",rsa:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->md5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",force"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->force:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 22
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 23
    iget-object v1, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->md5:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->p(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d([B)V

    .line 24
    iget v1, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->size:I

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    .line 25
    iget-object v1, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 26
    iget-object v1, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d([B)V

    const-string v1, "\u4e0b\u53d1ai\u5347\u7ea7\u6307\u4ee4"

    .line 27
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiOtaStartUpdate:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    .line 29
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->c:Z

    return-void

    .line 30
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->d:Z

    const-string v3, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u9519\u8bef"

    invoke-direct {p0, v5, v1, v0, v3}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->o(IZZLjava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ai\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u51fa\u9519\uff0cmd5\u6216\u8005url\u4e3a\u7a7a\u3002\u5f53\u524d\u7248\u672c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b:Lcn/mucang/android/jiakaoyi/signal/ai/c;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/ai/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u670d\u52a1\u5668\u6700\u65b0\u7248\u672c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_4
    const-string v0, "\u7248\u672c\u76f8\u540c\uff0c\u4e0d\u9700\u8981\u5347\u7ea7"

    .line 32
    invoke-direct {p0, v1, v1, v1, v0}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->o(IZZLjava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ai\u4e0d\u9700\u8981\u5347\u7ea7\uff0c\u5f53\u524d\u7248\u672c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b:Lcn/mucang/android/jiakaoyi/signal/ai/c;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/ai/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v2, :cond_8

    const-string v1, ""

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uff0c\u670d\u52a1\u5668\u6700\u65b0\u7248\u672c:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/AiUpdateModel;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v0

    .line 34
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->d:Z

    const-string v3, "AI\u5347\u7ea7\u4fe1\u606f\u67e5\u8be2\u5931\u8d25"

    invoke-direct {p0, v5, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->o(IZZLjava/lang/String;)V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ai\u5347\u7ea7\u4fe1\u606f\u67e5\u8be2\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private synthetic i()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->h()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->e:Z

    return-void
.end method

.method private synthetic k(Lcn/mucang/android/jiakaoyi/signal/ai/c;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b:Lcn/mucang/android/jiakaoyi/signal/ai/c;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ai\u67e5\u8be2\u7ed3\u679c, version:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b:Lcn/mucang/android/jiakaoyi/signal/ai/c;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/ai/c;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b:Lcn/mucang/android/jiakaoyi/signal/ai/c;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/ai/c;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->a:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ai notify\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic m(Z)V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/c;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/g;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 3
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 4
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/d;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->i(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->e()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "\u53d1\u9001AI 0xB7\u6d88\u606f \u8bbe\u5907\u53f7\u4e3a\u7a7a"

    .line 10
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_1
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "\u53d1\u9001AI 0xB7\u6d88\u606f \u786c\u4ef6ID\u4e3a\u7a7a"

    .line 12
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private o(IZZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->j:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$d;->a(IZZLjava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/ai/ota/c;

    invoke-direct {p1, p0, p3}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;Z)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static p(Ljava/lang/String;)[B
    .locals 5

    const/16 v0, 0x10

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 2
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    .line 4
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const-string p0, "ai\u6587\u4ef6\u7684md5\u503c\u4e3a\u7a7a"

    .line 5
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    new-array p0, v0, [B

    return-object p0
.end method


# virtual methods
.method public f()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5f53\u524d\u5df2\u7ecf\u5728\u8fdb\u884cai\u66f4\u65b0\u68c0\u67e5\u4e86"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->e:Z

    .line 4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return v0
.end method

.method public synthetic j()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->i()V

    return-void
.end method

.method public synthetic l(Lcn/mucang/android/jiakaoyi/signal/ai/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->k(Lcn/mucang/android/jiakaoyi/signal/ai/c;)V

    return-void
.end method

.method public synthetic n(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->m(Z)V

    return-void
.end method
